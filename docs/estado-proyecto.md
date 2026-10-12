# Estado del Proyecto

**Ultima actualizacion:** 12 de octubre de 2026

## Resumen

| Oleada | Estado | Progreso |
|---|---|---|
| 1 - Fundamentos | Completada | 8/8 documentos |
| 2 - Producto | Completada | 139/139 historias |
| 3 - Negocio y Legal | Completada | 15/15 entregables |
| 4 - Construccion | En progreso | 2/6 hitos |
| 5 - Salida y Escala | Pendiente | 0/6 hitos |

## Detalle por oleada

### Oleada 1 - Fundamentos (Completada)

- [x] Vision
- [x] Alcance del MVP
- [x] Modelo Entidad-Relacion
- [x] Arquitectura Tecnica
- [x] Modelo Financiero
- [x] Roadmap
- [x] Glosario
- [x] Decisiones (ADRs)

### Oleada 2 - Producto (Completada)

139 historias de usuario en 10 epicas.

- [x] Epica 1 - Cimientos multi-tenant (12 HU)
- [x] Epica 2 - Registro de equipos y jugadores (14 HU)
- [x] Epica 3 - Trust Engine financiero (15 HU)
- [x] Epica 4 - Torneos y programacion (16 HU)
- [x] Epica 5 - Operacion de partidos (15 HU)
- [x] Epica 6 - Disciplina y justicia (14 HU)
- [x] Epica 7 - Competencia y premios (13 HU)
- [x] Epica 8 - Experiencia de usuario (14 HU)
- [x] Epica 9 - Confianza y cumplimiento (14 HU)
- [x] Epica 10 - Reportes y BI (12 HU)

### Oleada 3 - Negocio y Legal (Completada)

**Negocio (5):**
- [x] Pricing final
- [x] Propuesta de valor por segmento
- [x] Buyer personas
- [x] Material comercial
- [x] Go-to-market

**Legal (7):**
- [x] Figura legal y constitucion
- [x] Terminos y condiciones del SaaS
- [x] Politica de privacidad (LFPDPPP)
- [x] Contrato modelo con ligas
- [x] Contrato con arbitros
- [x] NDAs y proteccion de PI
- [x] Guia de registro de marca IMPI

**Operacion (3):**
- [x] Manual de onboarding
- [x] Manual de soporte
- [x] Playbook de ventas

### Oleada 4 - Construccion (En progreso)

**Estrategia:** desarrollo interno (Carlos + Claude). Sin dev externo.

**Hitos:**

- [x] Hito 0 - Fundacion tecnica (cerrado)
- [x] Hito 1 - Auth + multi-tenant (cerrado)
- [ ] Hito 2 - Ligas, equipos, jugadores (pendiente)
- [ ] Hito 3 - Calendario, programacion, arbitros
- [ ] Hito 4 - Resultados, tablas, sanciones
- [ ] Hito 5 - Pagos, suscripciones, facturacion
- [ ] Hito 6 - PWA, notificaciones, panel operador

#### Hito 0 - Fundacion tecnica (CERRADO)

- Monorepo pnpm 12 + Turborepo 2
- API NestJS 10 con /health
- Web Next.js 14 con landing + login
- Prisma 5.22 + schema inicial
- Docker Compose (Postgres 16 + Redis 7)
- Packages compartidos (db, types, config, ui)
- CI en GitHub Actions
- ESLint configurado

#### Hito 1 - Auth + multi-tenant (CERRADO)

- Cliente Supabase en API + healthcheck extendido
- Modulo Auth con SupabaseAuthGuard
- RBAC con 10 roles y jerarquia
- RLS FORCE con rol `liga_app` y helper `withTenant`
- Frontend auth real con Supabase SSR
- Paginas: `/`, `/login`, `/dashboard`, `/logout`
- Middleware de refresco de sesion

**Pendiente corto del Hito 1:**
- `POST /auth/register` (crea organizacion + usuario en transaccion)
- Seed con organizacion demo
- Tests E2E del flujo registro -> login -> crear liga

### Oleada 5 - Salida y Escala (Pendiente)

- [ ] OLE-01 - Estrategia con periodista vocero
- [ ] OLE-02 - Landing page publica
- [ ] OLE-03 - Contenido y SEO
- [ ] OLE-04 - Registro de marca (ejecucion)
- [ ] OLE-05 - CRM y proceso comercial
- [ ] OLE-06 - Pitch para inversionistas

## Stack tecnologico

| Capa | Tecnologia |
|---|---|
| Monorepo | pnpm 12 + Turborepo 2 |
| Backend | NestJS 10 + TypeScript + Express |
| Frontend | Next.js 14 (App Router) + React 18 + Tailwind 3 |
| ORM | Prisma 5.22 |
| Base de datos | PostgreSQL 16 con RLS + FORCE |
| Auth | Supabase Auth (@supabase/ssr) |
| Cache/queues | Redis 7 |
| CI/CD | GitHub Actions |
| Hosting objetivo | Por definir (Railway o Render) |

## Metricas clave

| Metrica | Valor actual | Meta 12 meses |
|---|---|---|
| Ligas activas | 0 | 20 |
| MRR | $0 | $60,000 MXN |
| Documentos completados | 40+ | - |
| Historias en backlog | 139 | - |
| Historias implementadas | ~10 | 139 |
| Hitos tecnicos cerrados | 2/6 | 6/6 |
| Inversion inicial | $0 | $150,000 MXN |

## Hitos del proyecto

| Hito | Fecha objetivo | Estado |
|---|---|---|
| Cierre Oleada 1 | Octubre 2026 | Completado |
| Cierre Oleada 2 | Octubre 2026 | Completado |
| Cierre Oleada 3 | Octubre 2026 | Completado |
| Hito 0 - Fundacion tecnica | Octubre 2026 | Completado |
| Hito 1 - Auth + multi-tenant | Octubre 2026 | Completado |
| Hito 2 - Ligas, equipos, jugadores | Por definir | Pendiente |
| Hito 3 - Calendario y arbitros | Por definir | Pendiente |
| Hito 4 - Resultados y sanciones | Por definir | Pendiente |
| Hito 5 - Pagos y facturacion | Por definir | Pendiente |
| Hito 6 - PWA y notificaciones | Por definir | Pendiente |
| MVP v1.0 | Por definir | Pendiente |
| Primer cliente pagando | Por definir | Pendiente |
| 20 ligas activas | Octubre 2027 | Pendiente |

## Proximos pasos inmediatos

1. Cerrar pendiente corto del Hito 1:
   - `POST /auth/register`
   - Seed de organizacion demo
   - Tests E2E del flujo de registro
2. Arrancar Hito 2 (ligas, equipos, jugadores):
   - Modulo `LigasModule` con CRUD protegido por RLS
   - Modulo `EquiposModule` con registro y delegados
   - Modulo `JugadoresModule` con carnet digital
3. Aplicar kit de marca AutoElekIA (iconos, colores)
4. Completar CI (Supabase env vars para tests)

## Riesgos actuales

| Riesgo | Nivel | Mitigacion |
|---|---|---|
| Complejidad del MVP (22 sprints) | Alto | Priorizar modulos criticos, Hitos incrementales |
| Costos iniciales mayores | Bajo | Stack gratuito inicial (Supabase Free, Railway trial) |
| Adopcion lenta de pilotos | Bajo | Onboarding asistido, Liga Cero como caso de uso |
| Deuda tecnica de tests | Medio | Agregar cobertura desde Hito 2 |
| Cambios de alcance | Medio | Aplicar regla: si algo va a fallar, resolver antes de avanzar |

## Documentos de referencia

- `docs/traspaso-contexto.md` — Documento vivo, fuente de verdad operativa
- `docs/06-roadmap.md` — Roadmap por oleadas
- `docs/02-mvp-scope.md` — 37 modulos, 139 historias
- `docs/03-modelo-entidad-relacion.md` — Modelo de datos
- `docs/04-arquitectura-tecnica.md` — Arquitectura tecnica
- `docs/08-decisiones.md` — Decisiones arquitectonicas (ADRs)
