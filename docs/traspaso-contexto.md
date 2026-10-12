# Traspaso de Contexto — Liga SaaS

**Ultima actualizacion:** 12 de octubre de 2026, 00:50 CDMX
**Estado:** Hito 0 y Hito 1 cerrados. Hito 2 pendiente.

> Documento vivo. Si el chat se corta, pega el bloque del punto 9 en una sesion nueva para retomar.

---

## 1. Quien es el proyecto

**Liga SaaS** es un SaaS de administracion de ligas de futbol para operadores de complejos deportivos en Mexico. Dueno: Carlos Aleman (@AutoElekIA). Repo: `github.com/AutoElekIA/liga-saas`.

**Frase guia:** "El MVP no administra ligas. Hace que las ligas se administren solas."

**Decision operativa:** desarrollo entre Carlos y Claude. Sin dev externo por ahora.

**Codespace:** `bug-free-invention-5gg64995qxxx34g66`.

---

## 2. Estado del proyecto

**Documentacion (5 oleadas):** completada.
**Construccion de software:** Hito 0 y Hito 1 cerrados, ambos en `main`.
**Hito 2:** pendiente (ligas, equipos, jugadores).

**Ultimo commit en main:** `f6bf6b3` — Merge PR #208 (Hito 1).

---

## 3. Hito 0 — Fundacion tecnica — CERRADO

5 commits en `main` via PR #205 + PR #207 (ESLint):

| Commit | Contenido |
|---|---|
| `07e66e8` | Migracion a monorepo (pnpm 12 + Turborepo 2) |
| `e43e60f` | API NestJS con `/health` |
| `913f644` | Web Next.js con landing + login |
| `c36fd09` | Prisma + schema inicial + Docker Compose |
| `777fe5d` | Packages compartidos + CI + README |
| `b878ba8` | ESLint configurado en el monorepo |
| `94c4dff` | Merge final con CI verde |

**Verificado:** `pnpm turbo run build` 6/6, `pnpm turbo run test` 2/2, `pnpm turbo run lint` 6/6.

**Estructura:**
liga-saas/
├── apps/
│ ├── api/ # NestJS 10 (puerto 3000)
│ └── web/ # Next.js 14 + Tailwind 3 (puerto 3001)
├── packages/
│ ├── db/ # Prisma 5.22 + migraciones
│ ├── types/ # Tipos compartidos
│ ├── config/ # Constantes
│ └── ui/ # Componente Button
├── docs/
├── legal/
├── scripts/
├── docker-compose.yml # Postgres 16 + Redis 7
├── turbo.json
├── pnpm-workspace.yaml
├── .eslintrc.json
└── .eslintignore

---

## 4. Hito 1 — Auth + multi-tenant — CERRADO

5 commits en `main` via PR #208:

| Commit | Contenido |
|---|---|
| `6569dd6` | Cliente Supabase en API + healthcheck extendido |
| `177e8a0` | Auth module con `SupabaseAuthGuard` |
| `ce545cd` | RBAC con 10 roles y jerarquia |
| `8395f7b` | RLS multi-tenant con FORCE + `withTenant` |
| `4c1cd78` | Frontend auth real con Supabase SSR |

**API (NestJS):**
- `GET /health` → status, service, timestamp, uptime
- `GET /health/supabase` → verifica que las 3 variables estan configuradas
- `GET /auth/me` → perfil del usuario autenticado
- `GET /auth/me/org` → requiere rol `admin_org` o `superadmin`
- `GET /auth/me/admin` → requiere rol `admin_liga`, `admin_complejo`, `admin_org` o `superadmin`
- Guards: `SupabaseAuthGuard`, `RolesGuard`
- Decoradores: `@CurrentUser()`, `@Roles()`

**DB (Prisma + Postgres 16):**
- Tabla `organizaciones` (multi-tenant raiz)
- Tabla `usuarios` con `supabase_user_id` (UUID unico) y `rol` (default `jugador`)
- Tabla `ligas`
- Rol Postgres `liga_app` (NOLOGIN NOSUPERUSER NOBYPASSRLS NOINHERIT)
- Funcion `current_organizacion_id()` que lee `app.current_organizacion_id`
- RLS FORCE activado en `organizaciones`, `usuarios`, `ligas`
- Helper `withTenant(orgId, cb)` para queries con aislamiento
- Helper `withoutTenant(cb)` para tareas admin
- Test de aislamiento `packages/db/scripts/test-rls.ts` (3/3 pasando)

**Web (Next.js 14 App Router):**
- `/` landing estatica
- `/login` formulario real con `signInWithPassword`
- `/dashboard` protegido (server component, consume `GET /auth/me`)
- `/logout` POST que cierra sesion
- `middleware.ts` refresca sesion y protege rutas

---

## 5. Supabase

**Project:** `liga-saas`
**Ref:** `<project-ref>` (ver Supabase Console > Settings > General)
**URL:** `https://<project-ref>.supabase.co`
**Plan:** Free

**Credenciales:**
- `SUPABASE_URL` — `.env` de `apps/api` y `.env.local` de `apps/web`
- `SUPABASE_PUBLISHABLE_KEY` — misma en ambos
- `SUPABASE_SERVICE_ROLE_KEY` — solo en `apps/api/.env`

**Nunca** commitear `.env` ni `.env.local`. Ambos estan en `.gitignore`.

**Integracion GitHub:** desactivar `Deploy to production` mientras Prisma maneja migraciones para evitar conflictos entre Supabase y nuestro Postgres.

---

## 6. Decisiones tomadas que NO se deben revertir

- **Monorepo:** pnpm 12 + Turborepo 2. No npm ni yarn.
- **Backend:** NestJS 10 con TypeScript, Express.
- **Frontend:** Next.js 14 App Router + Tailwind 3 + React 18.
- **ORM:** Prisma 5.22. No actualizar a 8 (es RC).
- **DB:** PostgreSQL 16 con RLS + FORCE.
- **Auth:** Supabase Auth con `@supabase/ssr` en web y `@supabase/supabase-js` en API.
- **Pagos (Modelo B):** cada liga trae su pasarela (Mercado Pago, Stripe MX, Clip, Santander, BBVA, Banorte). El SaaS **no intermedia** dinero.
- **Multi-tenant:** RLS FORCE con rol `liga_app` y `withTenant`.
- **Legal:** `legal/politica-privacidad.md` (248 lineas) cubre LFPDPPP 2025, ARCO, tutor, anonimizacion.
- **Tutor como usuario:** `Tutor.usuario_id` nullable. El tutor tiene cuenta propia.
- **Menores:** solo <18 con tutor obligatorio.
- **Conservacion de datos:** 5 anos general; menores 5 anos post-torneo.

---

## 7. Convenciones de trabajo con Claude

- **Terminal:** usar `nano` con `rm` antes para reescribir archivos completos. Evitar heredocs (se cortan en Codespaces).
- **Pegados largos:** el portapapeles de Codespaces corta textos >150 lineas. Dividir en bloques.
- **Commits:** uno por concern. Mensaje en espanol sin acentos, cuerpo con bullets y referencias.
- **Ramas:** `feat/...`, `chore/...`, `fix/...`. Una por feature. PR + merge.
- **Idioma:** espanol sin acentos en codigo/markdown. Espanol con acentos en chat si se pide.
- **Claude NO puede:** ejecutar comandos, crear cuentas, firmar, desplegar, pushear. Todo lo hace Carlos.
- **Claude SI puede:** escribir codigo completo, migraciones, tests, configs, commits, PRs, diagnosticos.

---

## 8. Proximos hitos

### Hito 2 — Ligas, equipos, jugadores
- Modulo `LigasModule` con CRUD protegido por RLS y `@Roles()`.
- Modulo `EquiposModule` con registro y delegados.
- Modulo `JugadoresModule` con carnet digital.
- Uso de `withTenant(orgId, cb)` en todos los servicios.
- Tests E2E del flujo completo.

### Hito 3 — Calendario, programacion, arbitros
### Hito 4 — Resultados, tablas, sanciones
### Hito 5 — Pagos, suscripciones, facturacion
### Hito 6 — PWA, notificaciones, panel operador

### Pendiente corto para cerrar Hito 1
- `POST /auth/register` que crea organizacion + usuario en transaccion.
- Seed con organizacion demo.
- Tests E2E del flujo: registro → login → crear liga.
- Arreglar CI si falla por variables de Supabase faltantes.

---

## 9. Como retomar si se corta el chat

**Pega esto en el primer mensaje:**

> Retomamos Liga SaaS. Repo `github.com/AutoElekIA/liga-saas`, rama `main`. Hito 0 y Hito 1 cerrados (PR #205, #207, #208). Auth con Supabase, RBAC con 10 roles, RLS FORCE con `withTenant`. Falta Hito 2 (ligas, equipos, jugadores). Lee `docs/traspaso-contexto.md` para contexto completo. Antes de arrancar, dime si el CI de `main` paso en verde y si vamos con Hito 2 o cerramos el pendiente corto del Hito 1.

---

## 10. Documentacion clave del repo

| Ruta | Que contiene |
|---|---|
| `docs/00-indice.md` | Catalogo de todo |
| `docs/02-mvp-scope.md` | 37 modulos, 15 criterios de terminado |
| `docs/03-modelo-entidad-relacion.md` | Tablas y reglas de integridad |
| `docs/04-arquitectura-tecnica.md` | Stack, RLS, offline |
| `docs/06-roadmap.md` | Oleadas e hitos |
| `docs/08-decisiones.md` | ADRs |
| `docs/traspaso-contexto.md` | Este documento |
| `legal/politica-privacidad.md` | LFPDPPP 2025, ARCO, tutor |
| `legal/contrato-ligas.md` | Contrato SaaS con ligas |
| `README.md` | Quick start del monorepo |

---

## 11. Comandos clave

```bash
# Levantar todo
docker compose up -d
pnpm install
pnpm --filter @liga-saas/db migrate:dev
pnpm dev

# API en http://localhost:3000
# Web en http://localhost:3001

# Tests
pnpm turbo run test
pnpm --filter @liga-saas/db test:rls

# Nueva migracion
pnpm --filter @liga-saas/db migrate:dev --name nombre

# Prisma Studio
pnpm --filter @liga-saas/db studio

Ultima actualizacion: 12 de octubre de 2026, 00:50 CDMX
Estado: Hito 0 y Hito 1 cerrados. Hito 2 pendiente.
Rama activa: main.
