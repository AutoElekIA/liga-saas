# Decisiones Tomadas del Proyecto

Documento de referencia rápida. Cada decisión tiene contexto y estado.
**No re-litigar decisiones ya tomadas sin motivo nuevo.**

## Marca

### Marca paraguas: AutoElekIA
- Razon: marca generica escalable vs marca personal
- Estado: Confirmada

### Proyecto activo: AutoElekIA SaaS Ligas
- Abreviatura: Ligas
- Estado: Confirmada

### Otros proyectos del ecosistema
- AutoElekIA SaaS MIKE (condominios) - Pausado
- AutoElekIA PWA Enrutador - Por definir
- AutoElekIA Compras Hogar - Por definir
- Legacy: AlemanSoftworks

## Producto

### Alcance del MVP
- 37 modulos en 10 epicas
- 139 historias de usuario documentadas
- Estado: Confirmada

### Stack tecnologico
- Backend: Node.js 20 + TypeScript + NestJS
- ORM: Prisma
- DB: PostgreSQL 16 con RLS + FORCE ROW LEVEL SECURITY
- Frontend: React 18 + Next.js 14 + Tailwind
- Mobile: PWA con Service Workers + IndexedDB
- Auth: Supabase
- Cache/queues: Redis
- Pagos: Mercado Pago
- CI/CD: GitHub Actions
- Hosting: Railway o Render
- Estado: Confirmada

### Multi-tenancy con RLS
- Aislamiento por organizacion_id
- current_setting('app.organization_id', true) en politicas
- set_config local por transaccion (no por conexion)
- Rol de aplicacion sin BYPASSRLS
- FORCE ROW LEVEL SECURITY en todas las tablas
- Tests que intentan leer otra liga y fallan
- Estado: Confirmada

### Offline acotado
- 3 operaciones:
  1. Acta del partido (eventos, alineacion)
  2. Cobros en cancha
  3. Validacion QR
- El resto funciona online
- Estado: Confirmada

### Resolucion de conflictos offline
- Encabezado acta: last-write-wins con auditoria
- Eventos partido: append-only con ID cliente + contador monotono
- Cobros: append-only con deduplicacion
- QR: idempotente por naturaleza
- NO usar reloj del dispositivo
- Estado: Confirmada

### Fianzas
- Una vez por torneo
- Deduccion automatica por incumplimiento
- Reposicion obligatoria si baja del minimo
- Liberacion al cierre con saldo no ejecutado
- Estado: Confirmada

### Jugadores
- Identidad compartida DENTRO de la organizacion
- NO entre organizaciones (viola multi-tenancy)
- Estado: Confirmada

### Trust Engine
- Motor de reglas determinista
- Configurable por liga
- Cada sancion guarda version de la regla
- Estado: Confirmada

### Mercado Pago
- Procesamiento CENTRALIZADO
- Cuenta del SaaS procesa y dispersa a ligas
- Marketplace + OAuth + split → Fase 2
- Estado: Confirmada

## Desarrollo

### Estrategia: desarrollo interno (Carlos + Claude)

- Decisor: Carlos Aleman (@AutoElekIA)
- Fecha: 12 de octubre de 2026
- Motivo principal: se revisaron los trabajos de los candidatos al
  puesto de Senior Full Stack. El nivel tecnico observado fue inferior
  al trabajo que Carlos produce asistido por IA. No se justifica pagar
  $2,000 USD/mes por un recurso que no aporta valor superior al ya
  disponible internamente.
- Razon complementaria: el flujo actual (Carlos + Claude) permite
  iteracion diaria sin onboarding, control total del roadmap y cero
  dependencia de terceros para el nucleo del producto.
- Modelo operativo:
  - Carlos: direccion, revision, ejecucion de comandos, decisiones.
  - Claude: codigo completo, migraciones, tests, PRs, diagnosticos.
  - Todo el trabajo se audita via PRs y CI en GitHub.
- Criterio de reevaluacion:
  - El alcance del MVP crece mas alla de lo que una persona asistida
    por IA puede mantener.
  - Aparece un candidato con nivel claramente superior al actual.
  - El proyecto requiere presencia fisica o legal (contador, abogado).
- Estado: Confirmada (2026-10-12)

### Historial: estrategia de reclutamiento (CANCELADA)

Se preparo un paquete completo para contratar un Senior Full Stack
(NestJS + PostgreSQL + RLS + PWA). Incluia:

- Perfil buscado: Senior Full Stack verificable, no junior.
- Presupuesto: $2,000 USD/mes base + variable por sprint + bono MVP.
- Zona horaria: priorizar Japon, Uzbekistan, Europa del Este para
  coincidir con el horario nocturno del titular (10pm-8am CDMX).
- Proceso: filtro por GitHub, propuesta tecnica, entrevista de 45 min,
  prueba tecnica pagada ($1,500-3,000 MXN), NDA + cesion de derechos.

**Cancelada el 2026-10-12** al revisar los trabajos de los candidatos:
el nivel tecnico observado fue inferior al trabajo interno asistido
por IA.

Documentos historicos preservados en `docs/historico/reclutamiento/`:
- `costeo-equipo.md`
- `estado-reclutamiento.md`
- `paquete-reclutamiento.md`


## Infraestructura

### GitHub
- Pro activo desde Octubre 2026
- Rulesets en main y develop
- Bypass para owner (AutoElekIA)
- Bypass usado con criterio (no abusar)
- Estado: Confirmada

### Documentos de continuidad
- Todo vive en GitHub, no en chats
- Prompts de restauracion en docs/prompt-restauracion.md
- Estado: Confirmada
