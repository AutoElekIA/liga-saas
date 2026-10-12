import { prisma, withTenant, withoutTenant } from '../src/index';

async function main() {
  console.log('=== Test de aislamiento RLS ===\n');

  await withoutTenant(async (tx) => {
    await tx.usuario.deleteMany({});
    await tx.liga.deleteMany({});
    await tx.organizacion.deleteMany({});
  });

  const { orgA, orgB } = await withoutTenant(async (tx) => {
    const orgA = await tx.organizacion.create({
      data: { nombre: 'Liga A' },
    });
    const orgB = await tx.organizacion.create({
      data: { nombre: 'Liga B' },
    });
    return { orgA, orgB };
  });

  console.log('Org A:', orgA.id);
  console.log('Org B:', orgB.id);

  await withoutTenant(async (tx) => {
    await tx.usuario.create({
      data: {
        organizacionId: orgA.id,
        email: 'admin-a@test.com',
        rol: 'admin_org',
      },
    });
    await tx.usuario.create({
      data: {
        organizacionId: orgB.id,
        email: 'admin-b@test.com',
        rol: 'admin_org',
      },
    });
  });

  const usuariosA = await withTenant(orgA.id, (tx) => tx.usuario.findMany());
  console.log('\n[Test 1] Usuarios con withTenant(orgA):');
  console.log(usuariosA.map((u) => u.email));
  if (usuariosA.length !== 1 || usuariosA[0].email !== 'admin-a@test.com') {
    throw new Error('FALLO: orgA ve datos de orgB');
  }
  console.log('OK');

  const usuariosB = await withTenant(orgB.id, (tx) => tx.usuario.findMany());
  console.log('\n[Test 2] Usuarios con withTenant(orgB):');
  console.log(usuariosB.map((u) => u.email));
  if (usuariosB.length !== 1 || usuariosB[0].email !== 'admin-b@test.com') {
    throw new Error('FALLO: orgB ve datos de orgA');
  }
  console.log('OK');

  const todos = await withoutTenant((tx) => tx.usuario.findMany());
  console.log('\n[Test 3] Usuarios sin contexto (admin):');
  console.log(todos.map((u) => u.email));
  if (todos.length !== 2) {
    throw new Error('FALLO: admin no ve todos los usuarios');
  }
  console.log('OK');

  await withoutTenant(async (tx) => {
    await tx.usuario.deleteMany({});
    await tx.liga.deleteMany({});
    await tx.organizacion.deleteMany({});
  });

  console.log('\n=== Todos los tests pasaron ===');
}

main()
  .catch((e) => {
    console.error('\nError:', e.message);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
