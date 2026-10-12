# SaaS de Administracion de Ligas de Futbol

Sistema SaaS que permite a operadores de complejos deportivos administrar ligas de futbol de principio a fin, sin Excel, sin WhatsApp y sin intervencion manual critica.

**Frase que lo define:** El MVP no administra ligas. Hace que las ligas se administren solas.

## Estado del proyecto

**Documentacion cerrada (5 oleadas):**

- **Oleada 1 - Fundamentos:** Completada (8 documentos)
- **Oleada 2 - Producto:** Completada (139 historias de usuario)
- **Oleada 3 - Negocio y Legal:** Completada (15 entregables)
- **Oleada 4 - Construccion (documentos):** Completada (6 documentos)
- **Oleada 5 - Salida y Escala:** Completada (6 entregables)

**Construccion del software:** en progreso. Hito actual: fundacion tecnica del monorepo.

## Quick start

### Requisitos

- Node.js 20+
- pnpm 12+
- Docker 29+ con Docker Compose

### Instalacion

Ejecutar en orden:

1. Clonar el repo: `git clone https://github.com/AutoElekIA/liga-saas.git`
2. Entrar a la carpeta: `cd liga-saas`
3. Instalar dependencias: `pnpm install`
4. Aprobar builds (solo la primera vez): `pnpm approve-builds`
5. Copiar variables de entorno: `cp .env.example .env`
6. Copiar variables de entorno para DB: `cp .env.example packages/db/.env`
7. Levantar Postgres y Redis: `docker compose up -d`
8. Aplicar migraciones: `pnpm --filter @liga-saas/db migrate:dev`
9. Levantar todo en desarrollo: `pnpm dev`

Servicios en desarrollo:

- API: http://localhost:3000
- Web: http://localhost:3001
- Postgres: localhost:5432
- Redis: localhost:6379

### Comandos utiles

- `pnpm build` — Build de todo el monorepo
- `pnpm test` — Tests de todo el monorepo
- `pnpm lint` — Lint de todo el monorepo
- `pnpm clean` — Limpiar
- `pnpm --filter @liga-saas/api dev` — Solo la API
- `pnpm --filter @liga-saas/web dev` — Solo el web
- `pnpm --filter @liga-saas/db studio` — Prisma Studio
- `pnpm --filter @liga-saas/db migrate:dev --name <nombre>` — Nueva migracion

## Estructura del repositorio

liga-saas/
├── apps/
│   ├── api/              # Backend NestJS
│   └── web/              # Frontend Next.js
├── packages/
│   ├── db/               # Prisma + schema + migraciones
│   ├── types/            # Tipos compartidos
│   ├── config/           # Constantes compartidas
│   └── ui/               # Componentes UI compartidos
├── docs/                 # Documentacion del proyecto
├── legal/                # Documentos legales
├── scripts/              # Scripts de automatizacion
├── docker-compose.yml    # Postgres 16 + Redis 7
├── turbo.json            # Pipeline de Turborepo
└── pnpm-workspace.yaml   # Definicion del monorepo

- **apps/api/** — Backend NestJS
- **apps/web/** — Frontend Next.js
- **packages/db/** — Prisma + schema + migraciones
- **packages/types/** — Tipos compartidos
- **packages/config/** — Constantes compartidas
- **packages/ui/** — Componentes UI compartidos
- **docs/** — Documentacion del proyecto
- **legal/** — Documentos legales
- **scripts/** — Scripts de automatizacion
- **docker-compose.yml** — Postgres 16 + Redis 7
- **turbo.json** — Pipeline de Turborepo
- **pnpm-workspace.yaml** — Definicion del monorepo

## Documentacion

### Para empezar

- [Indice general](docs/00-indice.md)
- [Estado del proyecto](docs/estado-proyecto.md)
- [Vision](docs/01-vision.md)

### Producto

- [Alcance del MVP](docs/02-mvp-scope.md)
- [Modelo Entidad-Relacion](docs/03-modelo-entidad-relacion.md)
- [Arquitectura Tecnica](docs/04-arquitectura-tecnica.md)
- [Roadmap](docs/06-roadmap.md)

### Negocio

- [Modelo Financiero](docs/05-modelo-financiero.md)
- [Pricing](docs/pricing.md)
- [Propuesta de Valor](docs/propuesta-valor.md)
- [Buyer Personas](docs/buyer-personas.md)
- [Go-to-Market](docs/go-to-market.md)
- [Playbook de Ventas](docs/playbook-ventas.md)

### Legal

- [Figura Legal](legal/figura-legal.md)
- [NDAs y Propiedad Intelectual](legal/nda.md)
- [Terminos y Condiciones](legal/terminos-condiciones.md)
- [Politica de Privacidad](legal/politica-privacidad.md)
- [Contrato con Ligas](legal/contrato-ligas.md)
- [Contrato con Arbitros](legal/contrato-arbitros.md)
- [Registro de Marca IMPI](legal/marca-impi.md)

### Operacion

- [Manual de Onboarding](docs/manual-onboarding.md)
- [Manual de Soporte](docs/manual-soporte.md)

## Stack tecnologico

- **Backend:** Node.js + TypeScript + NestJS
- **Base de datos:** PostgreSQL 16 con Row-Level Security
- **ORM:** Prisma
- **Frontend:** React 18 + Next.js 14 (App Router)
- **Estilos:** Tailwind CSS 3
- **Mobile:** PWA con Service Workers
- **Auth:** Supabase Auth
- **Pagos:** Mercado Pago, Stripe MX, Clip, Santander, BBVA, Banorte
- **Cache y colas:** Redis 7
- **Monorepo:** pnpm workspaces + Turborepo
- **Hosting:** Railway o Render
- **CI/CD:** GitHub Actions



