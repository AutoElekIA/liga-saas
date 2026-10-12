Traspaso de Contexto — Liga SaaS
Pega este documento en docs/traspaso-contexto.md para que quede versionado en el repo. Así, si el chat se corta, cualquier instancia nueva puede leerlo y continuar.

1. Quién es el proyecto
Liga SaaS es un SaaS de administración de ligas de fútbol para operadores de complejos deportivos en México. Dueño: Carlos Alemán (@AutoElekIA). Repo: github.com/AutoElekIA/liga-saas. Codespace activo: bug-free-invention-5gg64995qxxx34g66.

Frase guía: "El MVP no administra ligas. Hace que las ligas se administren solas."

Decisión operativa clave: desarrollo entre Carlos y Claude (sin contratar dev externo por ahora).

2. Estado del proyecto
Documentación (5 oleadas): completada.
Construcción de software: Hito 0 cerrado, Hito 1 (Auth + multi-tenant) pendiente.

Hito 0 — Fundación técnica — COMPLETADO
5 commits mergeados a main en PR #205:

Commit	Contenido
07e66e8	Migración a monorepo (pnpm workspaces + Turborepo)
e43e60f	API NestJS con /health
913f644	Web Next.js con landing + login
c36fd09	Prisma + schema inicial + Docker Compose
777fe5d	Packages compartidos + CI + README
Verificado: pnpm turbo run build 6/6, pnpm turbo run test 2/2.

CI en GitHub Actions: FALLA en step turbo lint — esperado, ESLint no configurado aún.

Estructura actual
text
liga-saas/
├── apps/
│   ├── api/          # NestJS 10 (healthcheck OK, puerto 3000)
│   └── web/          # Next.js 14 + Tailwind 3 (landing + /login, puerto 3001)
├── packages/
│   ├── db/           # Prisma 5.22 + migración init aplicada (4 tablas)
│   ├── types/        # Rol, Deporte, EstadoLiga, PlanSaas, HealthResponse
│   ├── config/       # APP_NAME, API_PORT, WEB_PORT, PLANES, DEPORTES
│   └── ui/           # Componente Button (primary/secondary)
├── docs/             # Documentación
├── legal/            # Documentos legales (política de privacidad incluida)
├── scripts/          # Scripts de automatización
├── docker-compose.yml  # Postgres 16 + Redis 7
├── turbo.json
├── pnpm-workspace.yaml
├── .eslintrc.json    # CREADO pero no instalado aún
├── .eslintignore     # CREADO
└── package.json      # MODIFICADO con deps de ESLint (no instaladas aún)
3. Rama activa y trabajo en curso
Rama: chore/eslint-setup (creada desde main tras merge del PR #205).

Trabajo en progreso: configurar ESLint en el monorepo para que pase el CI.

Ya hecho en esta rama
package.json raíz reescrito con devDependencies de ESLint:

@typescript-eslint/eslint-plugin ^7.18.0

@typescript-eslint/parser ^7.18.0

eslint ^8.57.1

eslint-config-next ^14.2.20

eslint-config-prettier ^9.1.0

.eslintrc.json raíz creado (46 líneas) con:

root: true

parser @typescript-eslint/parser

extends: eslint:recommended, plugin:@typescript-eslint/recommended, prettier

override para apps/web/** con next/core-web-vitals

ignorePatterns: dist, node_modules, .next, .turbo, etc.

.eslintignore raíz creado

Pendiente en esta rama
Agregar script lint a los 5 packages (apps/api, packages/types, packages/config, packages/ui, packages/db) — los bloques JSON completos están en el chat, listos para pegar.

pnpm install para instalar las deps de ESLint.

pnpm turbo run lint y corregir warnings/errores que aparezcan.

Commit con mensaje propuesto:

text
chore(eslint): configurar ESLint en el monorepo

- .eslintrc.json raiz con TypeScript ESLint y override para Next
- .eslintignore excluyendo dist, node_modules, .next, .turbo
- scripts lint en apps/api y packages/{types,config,ui,db}
- deps en package.json raiz: eslint, typescript-eslint, next lint

Cierra pendiente del CI del Hito 0.
Push chore/eslint-setup y crear PR.

Merge y verificar que el CI pase verde.

Comandos exactos pendientes
bash
# Ya estás en chore/eslint-setup
# Falta reescribir los 5 packages con el script lint
# (los JSON completos están arriba en el chat, en el mensaje previo)
# Luego:
pnpm install
pnpm turbo run lint
# corregir errores
git add .
git commit -m "chore(eslint): configurar ESLint en el monorepo"
git push -u origin chore/eslint-setup
4. Decisiones tomadas que NO se deben revertir
Monorepo: pnpm 12 + Turborepo 2. No npm ni yarn.

Backend: NestJS 10 con TypeScript, Express por defecto.

Frontend: Next.js 14 App Router + Tailwind 3 + React 18.

ORM: Prisma 5.22. No actualizar a 8 (es RC).

DB: PostgreSQL 16 con RLS. Migración init ya aplicada.

Auth: Supabase Auth (ADR-004).

Pagos (Modelo B): cada liga trae su pasarela (Mercado Pago, Stripe MX, Clip, Santander, BBVA, Banorte). El SaaS no intermedia dinero. Declarado en legal/politica-privacidad.md.

Multi-tenant: RLS con organizacion_id en cada tabla.

Legal: legal/politica-privacidad.md existe (248 líneas) y cubre LFPDPPP 2025, ARCO, tutor, anonimización. No borrar.

Tutor como usuario: Tutor.usuario_id nullable. El tutor tiene cuenta propia.

Menores: solo <18 con tutor obligatorio.

Conservación de datos: 5 años general; menores 5 años post-torneo.

5. Convenciones de trabajo con Claude
Terminal: nano con rm antes para reescribir archivos completos. Evitar heredocs (se cortan).

Pegados largos: el portapapeles de Codespaces corta textos >150 líneas. Dividir o usar nano.

Commits: uno por concern, mensaje en español, cuerpo con bullets y referencias a ADRs/docs.

Ramas: feat/..., chore/..., fix/.... Una por feature. PR + merge.

Idioma: español sin acentos en código/markdown (por consistencia histórica), español con acentos en chat si Carlos lo pide.

Yo (Claude) NO puedo: ejecutar comandos, crear cuentas, firmar, desplegar, pushear. Todo lo hace Carlos.

Yo SÍ puedo: escribir código completo, migraciones, tests, configs, commits, PRs, diagnósticos.

6. Próximos hitos (después de ESLint)
Hito 1 — Auth + multi-tenant
Integrar Supabase Auth (o Auth propio con JWT).

Endpoints /auth/register, /auth/login, /auth/refresh.

Middleware de autenticación en NestJS.

RLS activado en Postgres.

Roles: superadmin, admin_org, admin_liga, delegado, arbitro, jugador, tutor, prensa.

Pantalla de login real conectada a la API.

Hito 2 — Ligas, equipos, jugadores
Hito 3 — Calendario, programación, árbitros
Hito 4 — Resultados, tablas, sanciones
Hito 5 — Pagos, suscripciones, facturación
Hito 6 — PWA, notificaciones, panel operador
7. Documentación clave del repo
Ruta	Qué contiene
docs/00-indice.md	Catálogo de todo
docs/02-mvp-scope.md	37 módulos, 15 criterios de terminado
docs/03-modelo-entidad-relacion.md	Tablas y reglas de integridad
docs/04-arquitectura-tecnica.md	Stack, RLS, offline
docs/06-roadmap.md	Oleadas e hitos
docs/08-decisiones.md	10 ADRs
legal/politica-privacidad.md	LFPDPPP 2025, ARCO, tutor
legal/contrato-ligas.md	Contrato SaaS con ligas
README.md	Quick start del monorepo
8. Cómo retomar si se corta el chat
Pega esto en el primer mensaje:

Retomamos Liga SaaS. Estoy en github.com/AutoElekIA/liga-saas, rama chore/eslint-setup. Hito 0 cerrado (5 commits en PR #205). Estoy configurando ESLint para que pase el CI. Ya creé .eslintrc.json, .eslintignore y modifiqué package.json raíz. Falta agregar scripts lint a los 5 packages, instalar, verificar y commitear. Lee docs/traspaso-contexto.md para contexto completo.

9. Cómo guardar este traspaso en el repo
Desde tu Codespace:

bash
nano docs/traspaso-contexto.md
Pega todo este documento, guarda con Ctrl+O, Enter, Ctrl+X.

Luego:

bash
git add docs/traspaso-contexto.md
git commit -m "docs: agregar traspaso de contexto para continuidad"
git push origin chore/eslint-setup
Así queda versionado y cualquier chat futuro puede retomar desde el repo, sin depender del historial de la conversación.

Última actualización: 12 de octubre de 2026, 22:00 CDMX.
Estado: Hito 0 cerrado, ESLint en curso, Hito 1 pendiente.
Rama activa: chore/eslint-setup.
