# Plan Integral — Liga SaaS

Plan completo del proyecto Liga SaaS, desde el estado actual hasta la
operacion con 20 ligas activas. Incluye hitos tecnicos, roadmap de
producto, integracion con el ecosistema AutoElekIA y metricas de
negocio.

## Fase 0 — Estado actual (2026-10-12)

| Componente | Estado | Notas |
|---|---|---|
| Documentacion | Completada | 5 oleadas, 40+ documentos |
| Monorepo | Completado | pnpm 12 + Turborepo 2 |
| API NestJS | Operativo | Auth + healthcheck |
| Web Next.js | Operativo | Landing + login + dashboard |
| Base de datos | Operativa | Postgres 16 + Prisma + RLS FORCE |
| Auth | Operativo | Supabase Auth + RBAC (10 roles) |
| Frontend auth | Operativo | Supabase SSR + middleware |
| CI | Operativo | GitHub Actions con Postgres real |
| Lint | Limpio | 0 warnings, 0 errors |
| Tests | Minimos | 2 tests (health) |
| Deploy | Pendiente | Sin hosting publico aun |

**Traduccion:** cimientos serios puestos. Falta construir el producto
por encima.

## Fase 1 — Cerrar Hito 1 (1-2 semanas)

**Objetivo:** terminar los pendientes del Hito 1 antes de arrancar
Hito 2.

### Backend

- [ ] Endpoint `POST /auth/register`
  - Crea organizacion + usuario en una transaccion Prisma
  - Vincula `supabase_user_id` con auth de Supabase
  - Rol inicial `admin_org`
- [ ] Seed de organizacion demo (`pnpm db:seed`)
  - 1 organizacion
  - 1 usuario admin
  - 1 liga de prueba
- [ ] Tests E2E del flujo registro -> login -> crear liga

### Frontend

- [ ] Pantalla `/register` (formulario conectado al endpoint)
- [ ] Ajustar `/login` para redirigir segun rol
- [ ] Mensajes de error consistentes

### CI

- [ ] Agregar variables de Supabase a GitHub Secrets
- [ ] Correr tests E2E en CI

**Entregable:** registro funcional end-to-end. Un usuario puede
crear su organizacion y loguearse.

## Fase 2 — Hito 2: Ligas, equipos, jugadores (3-4 semanas)

**Objetivo:** el nucleo operativo del producto.

### Modelos Prisma

- [ ] `Equipo` (nombre, delegado, colores, logo)
- [ ] `Jugador` (nombre, fecha nacimiento, curp opcional, foto)
- [ ] `EquipoJugador` (relacion N:M con fecha de alta)
- [ ] `CarnetDigital` (QR para validacion en cancha)
- [ ] `Delegado` (usuario que representa al equipo)

### Modulos NestJS

- [ ] `LigasModule` — CRUD protegido por RLS y `@Roles()`
- [ ] `EquiposModule` — registro, alta/baja de jugadores
- [ ] `JugadoresModule` — CRUD + generacion de carnet
- [ ] Servicios usando `withTenant(orgId, cb)`

### Frontend

- [ ] Pagina `/ligas` — lista + crear
- [ ] Pagina `/ligas/[id]` — detalle con equipos
- [ ] Pagina `/equipos/[id]` — roster + jugadores
- [ ] Pagina `/jugadores` — listado global con busqueda

### Tests

- [ ] Tests de servicio (equipos, jugadores)
- [ ] Tests E2E: crear liga -> equipo -> jugador -> carnet
- [ ] Test de aislamiento (liga A no ve datos de liga B)

**Entregable:** una liga puede registrar equipos y jugadores con
carnets digitales.

## Fase 3 — Hitos 3 y 4: Calendario, arbitros, resultados (4-6 semanas)

**Objetivo:** operar torneos de principio a fin.

### Hito 3 — Calendario, programacion, arbitros

- [ ] Modelos: `Torneo`, `Cancha`, `Horario`, `Arbitro`, `Designacion`
- [ ] Algoritmo de generacion de calendario (round-robin)
- [ ] Reglas de programacion (evitar choques de cancha y equipo)
- [ ] Modulo `TorneosModule`, `ArbitrosModule`
- [ ] Vista de calendario interactiva
- [ ] Designacion de arbitros por partido

### Hito 4 — Resultados, tablas, sanciones

- [ ] Modelos: `Partido`, `EventoPartido`, `Sancion`, `TablaPosiciones`
- [ ] Registro de resultados en vivo (PWA operador)
- [ ] Tabla de posiciones automatica
- [ ] Gestion de sanciones (rojas, acumulacion de amarillas)
- [ ] Apelaciones y resoluciones
- [ ] Reportes de disciplina

**Entregable:** un torneo completo se puede operar digitalmente.

## Fase 4 — Hitos 5 y 6: Pagos y PWA (4-6 semanas)

**Objetivo:** modelo de negocio activo + experiencia movil.

### Hito 5 — Pagos, suscripciones, facturacion

**Modelo confirmado:** cada liga trae su propia pasarela (Mercado
Pago, Stripe MX, Clip, Santander, BBVA, Banorte). **AutoElekIA no
intermedia el dinero.**

- [ ] Modelos: `PlanSaaS`, `Suscripcion`, `Cobro`, `PagoComprobante`
- [ ] Sistema de suscripciones (mensual, anual)
- [ ] Integracion con pasarelas de la liga (SPEI, tarjeta)
- [ ] Comprobantes de pago (carga de imagen)
- [ ] Recordatorios de pago (email + WhatsApp)
- [ ] Reportes de cobranza

### Hito 6 — PWA, notificaciones, panel operador

- [ ] PWA de operador (marcador de partidos en vivo)
- [ ] PWA de delegado (roster, alineacion)
- [ ] Notificaciones push (Firebase Cloud Messaging)
- [ ] Notificaciones WhatsApp (Twilio o Meta)
- [ ] Panel operador (calendario, resultados, sanciones)
- [ ] Modo offline para operador en cancha

**Entregable:** producto completo, listo para pilotos.

## Fase 5 — Pilotos y salida comercial (2-3 meses)

**Objetivo:** validar con ligas reales y arrancar ventas.

### Pilotos

- [ ] Liga Cero (liga de Carlos) — onboarding asistido
- [ ] 4 pilotos con excompaneros
- [ ] Documentar feedback
- [ ] Iterar producto con base en uso real

### Salida comercial

- [ ] Landing page publica con precios
- [ ] Onboarding self-service
- [ ] Material comercial (deck, one-pager, demo video)
- [ ] Pricing y facturacion activos
- [ ] Soporte (email + WhatsApp + base de conocimiento)

**Entregable:** primeras 5 ligas activas (1 pago + 4 pilotos).

## Fase 6 — Escala (6-12 meses)

**Objetivo:** 20+ ligas activas.

- [ ] Optimizacion de performance (Redis cache, indices)
- [ ] Migracion a hosting productivo (Railway, Render o Hetzner)
- [ ] Programa de referidos
- [ ] Expansion a otros deportes (basquetbol, voleybol)
- [ ] Multi-region
- [ ] API publica para integraciones

## Roadmap de hitos (resumen)

| Hito | Fase | Duracion | Estado |
|---|---|---|---|
| Hito 0 - Fundacion tecnica | Cimientos | 1-2 sem | Cerrado |
| Hito 1 - Auth + multi-tenant | Cimientos | 1-2 sem | Cerrado |
| Hito 1b - Register + seed | Cerrar Hito 1 | 1-2 sem | Pendiente |
| Hito 2 - Ligas, equipos, jugadores | Núcleo | 3-4 sem | Pendiente |
| Hito 3 - Calendario y arbitros | Operacion | 3-4 sem | Pendiente |
| Hito 4 - Resultados y sanciones | Operacion | 2-3 sem | Pendiente |
| Hito 5 - Pagos | Monetizacion | 2-3 sem | Pendiente |
| Hito 6 - PWA y notificaciones | Experiencia | 2-3 sem | Pendiente |
| Pilotos | Salida | 2-3 meses | Pendiente |

## Stack tecnologico

| Capa | Tecnologia |
|---|---|
| Monorepo | pnpm 12 + Turborepo 2 |
| Backend | NestJS 10 + TypeScript + Express |
| Frontend | Next.js 14 (App Router) + React 18 + Tailwind 3 |
| ORM | Prisma 5.22 |
| Base de datos | PostgreSQL 16 con RLS + FORCE |
| Auth | Supabase Auth (@supabase/ssr) |
| Cache | Redis 7 |
| CI/CD | GitHub Actions |
| Hosting objetivo | Railway o Render |

## Integracion con el ecosistema AutoElekIA

- **Marca:** usar kit oficial `autoelekia-brand` (iconos, colores)
- **Tema compartido:** azul `#2563eb`
- **Convenciones de codigo:** espanol sin acentos en codigo/markdown
- **Documentacion:** estandar de 5 oleadas + hitos tecnicos
- **Regla operativa:** si algo va a fallar, resolver antes de avanzar

## Metricas de exito

| Metrica | Fase 1 | Fase 3 | Fase 5 | Fase 6 |
|---|---|---|---|---|
| Hitos cerrados | 3/6 | 5/6 | 6/6 | 6/6 |
| Tests pasando | 10+ | 50+ | 100+ | 150+ |
| Ligas activas | 0 | 0 | 5 | 20+ |
| MRR | $0 | $0 | $15,000 MXN | $60,000 MXN |
| Churn mensual | - | - | - | <3% |

## Riesgos identificados

| Riesgo | Nivel | Mitigacion |
|---|---|---|
| Complejidad del MVP (22 sprints) | Alto | Hitos incrementales, priorizar criticos |
| Costos iniciales mayores | Bajo | Stack gratuito (Supabase Free, Railway trial) |
| Adopcion lenta de pilotos | Bajo | Onboarding asistido, Liga Cero como caso de uso |
| Deuda tecnica de tests | Medio | Cobertura minima desde Hito 2 |
| Cambios de alcance | Medio | Regla: no avanza hasta cerrar lo anterior |
| Dependencia de Carlos como único dev | Alto | Documentar todo, base de codigo mantenible |

## Proximos 5 pasos concretos

1. **Cerrar Hito 1b** — endpoint register + seed + tests E2E
2. **Arrancar Hito 2** — modelos Prisma de equipo/jugador
3. **Aplicar kit de marca** — iconos + colores de autoelekia-brand
4. **Deploy de staging** — Railway o Render con dominio temporal
5. **Onboarding de Liga Cero** — preparar el piloto

## Referencias

- docs/traspaso-contexto.md — Fuente de verdad operativa
- docs/06-roadmap.md — Roadmap por oleadas
- docs/02-mvp-scope.md — 37 modulos, 139 historias
- docs/03-modelo-entidad-relacion.md — Modelo de datos
- docs/04-arquitectura-tecnica.md — Arquitectura tecnica
- docs/08-decisiones.md — Decisiones arquitectonicas (ADRs)
- docs/estado-proyecto.md — Estado actual

## Autor

Equipo AutoElekIA (c) 2026
