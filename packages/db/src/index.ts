import { PrismaClient, Prisma } from '@prisma/client';

export * from '@prisma/client';

const globalForPrisma = globalThis as unknown as {
  prisma: PrismaClient | undefined;
};

export const prisma =
  globalForPrisma.prisma ??
  new PrismaClient({
    log:
      process.env.NODE_ENV === 'development'
        ? ['query', 'error', 'warn']
        : ['error'],
  });

if (process.env.NODE_ENV !== 'production') {
  globalForPrisma.prisma = prisma;
}

/**
 * Ejecuta una operacion con RLS activado para una organizacion especifica.
 *
 * Cambia al rol liga_app (NOSUPERUSER NOBYPASSRLS), setea
 * app.current_organizacion_id como variable local de transaccion y ejecuta
 * el callback. Al terminar la transaccion, la variable y el rol se revierten
 * automaticamente.
 *
 * Uso:
 *   const ligas = await withTenant(orgId, (tx) => tx.liga.findMany());
 */
export async function withTenant<T>(
  organizacionId: string,
  callback: (tx: Prisma.TransactionClient) => Promise<T>,
): Promise<T> {
  return prisma.$transaction(async (tx) => {
    await tx.$executeRawUnsafe('SET LOCAL ROLE liga_app');
    await tx.$executeRaw`SELECT set_config('app.current_organizacion_id', ${organizacionId}, true)`;
    return callback(tx);
  });
}

/**
 * Ejecuta una operacion sin contexto de tenant (bypass RLS).
 * Solo para tareas administrativas: crear organizaciones, migraciones,
 * reportes agregados, jobs del sistema.
 */
export async function withoutTenant<T>(
  callback: (tx: Prisma.TransactionClient) => Promise<T>,
): Promise<T> {
  return prisma.$transaction(callback);
}
