# Kickoff y Configuracion del Entorno

## 1. Proposito

Preparar todo el entorno tecnico, cuentas, accesos y convenciones antes de que llegue el desarrollador. Objetivo: que el dia 1 del dev, este programando, no configurando.

## 2. Estructura de ramas en GitHub

### Ramas permanentes
- **main**: produccion. Protegida. Solo merge via PR con aprobacion.
- **develop**: integracion. Protegida. Recibe PRs de features.

### Ramas temporales
- **feature/HU-XX-descripcion**: para cada historia de usuario.
- **fix/descripcion**: para correcciones.
- **hotfix/descripcion**: para emergencias en produccion.
- **chore/descripcion**: para tareas tecnicas.

### Flujo de trabajo
1. Dev crea rama desde develop.
2. Trabaja en la feature.
3. Push a la rama.
4. Crea PR hacia develop.
5. Se revisa y aprueba.
6. Merge a develop.
7. Cuando develop esta estable, PR a main.
8. Deploy a produccion.

## 3. Proteccion de ramas

### main
Configuracion recomendada:
- Require pull request before merging.
- Require 1 approval.
- Dismiss stale approvals cuando hay nuevos commits.
- Require conversation resolution.
- Require status checks (tests, lint, build).
- Do not allow bypassing.
- Restrict who can push (solo owner).

### develop
Configuracion recomendada:
- Require pull request before merging.
- Require status checks (tests, lint).
- Allow force pushes (solo owner).

### Como configurarlo
1. Ir a Settings > Branches.
2. Add branch protection rule.
3. Aplicar las reglas anteriores.

## 4. GitHub Actions - CI/CD

### Pipeline de CI (cada PR a develop o main)

Archivo: .github/workflows/ci.yml

Contenido:
- Checkout del codigo.
- Setup Node.js 20.
- Instalar dependencias.
- Correr linter (ESLint).
- Correr type check (tsc).
- Correr tests (Jest).
- Correr build.
- Reportar cobertura.

### Pipeline de CD (merge a main)

Archivo: .github/workflows/deploy.yml

Contenido:
- Deploy a staging (merge a develop).
- Deploy a produccion (merge a main).
- Notificacion a Slack o email.

### Ejemplo de workflow CI

name: CI

on:
  pull_request:
    branches: [develop, main]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: 20
      - run: npm ci
      - run: npm run lint
      - run: npm run type-check
      - run: npm run test
      - run: npm run build

## 5. Ambientes

### Local (desarrollo)
- Base de datos: PostgreSQL en Docker.
- Redis: Docker.
- Variables en .env.local.
- Datos: seed sintetico.
- URL: http://localhost:3000.

### Staging (QA)
- Base de datos: PostgreSQL gestionado.
- Redis: gestionado.
- Variables en GitHub Secrets.
- Datos: copia anonimizada de produccion.
- URL: staging.[dominio].com.

### Produccion (clientes)
- Base de datos: PostgreSQL gestionado.
- Redis: gestionado.
- Variables en GitHub Secrets.
- Datos reales.
- URL: app.[dominio].com.

## 6. Cuentas y accesos necesarios

| Servicio | Proposito | Costo | Cuando crear |
|---|---|---|---|
| GitHub | Repositorio | $0 | Listo |
| Railway o Render | Hosting | $20-50 USD/mes | Antes del sprint 1 |
| Supabase | Auth + DB | $0-25 USD/mes | Antes del sprint 1 |
| Cloudflare R2 o AWS S3 | Archivos | $5-15 USD/mes | Antes del sprint 1 |
| Mercado Pago | Pagos | $0 (comision) | Antes del sprint 3 |
| Meta WhatsApp API o Twilio | Notificaciones | $0-50 USD/mes | Antes del sprint 8 |
| Resend o SendGrid | Email | $0-20 USD/mes | Antes del sprint 8 |
| Sentry | Monitoreo | $0-26 USD/mes | Antes del sprint 2 |
| Dominio | Web | $200-800 MXN/ano | Antes del sprint 8 |

### Cuentas del titular
- Correo corporativo.
- GitHub owner.
- Todas las cuentas de servicios.

### Cuentas del desarrollador
- Correo corporativo.
- Acceso a GitHub con permisos limitados.
- Acceso a Railway/Render (staging).
- Acceso a Supabase (staging).
- Acceso a Sentry (lectura).
- NO owner de nada.

## 7. Variables de entorno y secretos

### Estructura .env

NODE_ENV=development
PORT=3000
APP_URL=http://localhost:3000
DATABASE_URL=postgresql://user:pass@localhost:5432/liga_saas
REDIS_URL=redis://localhost:6379
JWT_SECRET=xxx
JWT_EXPIRES_IN=15m
REFRESH_TOKEN_SECRET=xxx
REFRESH_TOKEN_EXPIRES_IN=7d
SUPABASE_URL=xxx
SUPABASE_ANON_KEY=xxx
SUPABASE_SERVICE_ROLE_KEY=xxx
S3_ENDPOINT=xxx
S3_BUCKET=xxx
S3_ACCESS_KEY=xxx
S3_SECRET_KEY=xxx
MERCADOPAGO_ACCESS_TOKEN=xxx
MERCADOPAGO_PUBLIC_KEY=xxx
MERCADOPAGO_WEBHOOK_SECRET=xxx
WHATSAPP_API_URL=xxx
WHATSAPP_API_TOKEN=xxx
RESEND_API_KEY=xxx
SENTRY_DSN=xxx

### Reglas
- Nunca commitear .env real.
- Solo .env.example en el repositorio.
- GitHub Secrets para produccion.
- Rotar credenciales cada 6 meses.

## 8. Convenciones de commits

### Formato
tipo(alcance): descripcion breve

### Tipos
- feat: nueva funcionalidad.
- fix: correccion de bug.
- docs: documentacion.
- style: formato de codigo.
- refactor: refactorizacion sin cambio de funcionalidad.
- test: agregar o modificar tests.
- chore: tareas de mantenimiento.
- perf: mejora de rendimiento.

### Ejemplos
- feat(auth): agregar login con Supabase
- fix(pagos): corregir manejo de webhook duplicado
- docs(api): documentar endpoints de equipos
- chore(deps): actualizar NestJS a 10.3

## 9. Convenciones de PR

### Titulo
Mismo formato que commits.

### Descripcion obligatoria
- Que hace este PR.
- Issue relacionado (HU-XX).
- Como probarlo.
- Screenshots si aplica (frontend).
- Checklist de criterios de aceptacion.

### Tamanio
- PRs pequenos: menos de 500 lineas cambiadas.
- Si es mas grande, dividir en varios PRs.

### Revision
- Al menos 1 aprobacion.
- Tests pasando.
- Sin conflictos.
- Descripcion clara.

## 10. Estructura del repositorio backend

backend/
  src/
    modulos/
      auth/
      organizaciones/
      complejos/
      ligas/
      torneos/
      equipos/
      jugadores/
      fianzas/
      billetera/
      cobros/
      pagos/
      calendario/
      partidos/
      actas/
      sanciones/
      disputas/
      tabla/
      estadisticas/
      premios/
      notificaciones/
      auditoria/
      soporte/
      reportes/
    comun/
    config/
    database/
    main.ts
  test/
  prisma/
  package.json
  tsconfig.json
  .env.example
  Dockerfile
  docker-compose.yml
  README.md

## 11. Estructura del repositorio frontend

frontend/
  src/
    app/
      (auth)/
      (admin)/
      (equipo)/
      (arbitro)/
      (jugador)/
      (publico)/
    componentes/
    hooks/
    lib/
    services/
    stores/
    types/
    styles/
  public/
    icons/
    manifest.json
  package.json
  next.config.js
  tailwind.config.js
  .env.example
  README.md

## 12. Sprint 1 (Epica 1 - Cimientos multi-tenant)

### Duracion
1 semana (5 dias habiles).

### Objetivo
Sentar las bases del sistema: multi-tenant, auth, roles, permisos.

### Historias incluidas
- HU-1.1 Crear organizacion.
- HU-1.2 Crear complejo.
- HU-1.3 Crear liga.
- HU-1.9 Aislamiento RLS (base).

### Entregables
- Base de datos con migraciones.
- RLS configurado en tablas base.
- API de organizaciones, complejos, ligas.
- Auth basico con Supabase.
- Roles basicos (superadmin, admin_org).
- Tests de aislamiento multi-tenant.
- Documentacion de cada modulo.

### Demo al final
Mostrar: crear organizacion, crear complejo, crear liga, y comprobar que una organizacion no ve datos de otra.

## 13. Sprint 2 (Epica 1 continuacion)

### Duracion
1 semana.

### Objetivo
Completar cimientos: roles granulares, onboarding wizard, auditoria.

### Historias incluidas
- HU-1.4 Gestionar usuarios y roles.
- HU-1.5 Asignar alcance de permisos.
- HU-1.6 Onboarding wizard.
- HU-1.11 Auditoria de accesos.
- HU-1.12 Seleccion de contexto.

### Demo al final
Mostrar: invitar usuario, asignar rol, auditoria de accesos.

## 14. Canal de comunicacion

### Diario
- WhatsApp o Slack para bloqueantes.
- Respuesta esperada: en horas habiles.
- Actualizacion de estado en el issue correspondiente.

### Semanal
- Reunion de sprint review viernes 30 min.
- Demo del trabajo completado.
- Planificacion del siguiente sprint.

### Quincenal
- Retrospectiva: que funciono, que no, que mejorar.

### Herramientas
- Slack o WhatsApp (comunicacion diaria).
- GitHub Issues (tracking).
- GitHub Projects (tablero).
- Google Meet o Zoom (reuniones).

## 15. Horario y disponibilidad

### Desarrollador
- Zona horaria: Mexico (CST).
- Horas: 9:00-18:00 o segun acuerdo.
- Disponibilidad minima: 20 h/semana.
- Respuesta a mensajes: en 4 horas habiles.

### Titular
- Disponibilidad: 4-6 h/dia.
- Reuniones: preferentemente manana.
- Respuesta a PRs: en 24 horas.

## 16. Definicion de "terminado" (Definition of Done)

Una historia se considera terminada cuando:
- Codigo en la rama feature.
- Tests escritos y pasando.
- Linter sin errores.
- Type check sin errores.
- PR creado con descripcion.
- PR revisado y aprobado.
- Criterios de aceptacion cumplidos.
- Documentacion actualizada.
- Merge a develop.
- Desplegado en staging.
- Verificado en staging.

## 17. Reunion de kickoff (dia 1)

### Duracion
2 horas.

### Agenda
- Minutos 0-15: Bienvenida y presentacion.
- Minutos 15-45: Vision del producto y roadmap.
- Minutos 45-75: Stack, convenciones, arquitectura.
- Minutos 75-105: Revision del backlog y sprint 1.
- Minutos 105-120: Preguntas y proximos pasos.

### Material para el dev
- Acceso al repositorio.
- Acceso a la documentacion.
- Acceso a las herramientas.
- Calendario de sprints.
- Canal de comunicacion.

## 18. Checklist de Kickoff

### Antes del dia 1
- NDA firmado.
- Cesion de derechos firmada.
- Contrato por honorarios firmado.
- Correo corporativo creado.
- Acceso a GitHub configurado.
- Ramas main y develop creadas.
- Proteccion de ramas configurada.
- GitHub Actions configurado.
- Cuentas de servicios creadas.
- Variables de entorno definidas.
- Documentacion lista.
- Sprint 1 planificado.

### Dia 1
- Reunion de kickoff realizada.
- Accesos entregados.
- Primer issue asignado.
- Canal de comunicacion activo.

### Semana 1
- Primer PR creado.
- PR revisado y aprobado.
- Primer merge a develop.
- Sprint review del viernes.

## 19. Costos iniciales del entorno

| Concepto | Costo mensual estimado |
|---|---|
| Railway o Render | $20-50 USD |
| Supabase | $0-25 USD |
| Cloudflare R2 o S3 | $5-15 USD |
| Sentry | $0-26 USD |
| Dominio | $200-800 MXN/ano |
| Total inicial | $25-116 USD/mes |

## 20. Proximos Pasos

- Crear ramas main y develop en GitHub.
- Configurar proteccion de ramas.
- Crear archivo .github/workflows/ci.yml.
- Crear archivo .github/pull_request_template.md.
- Crear cuenta en Railway o Render.
- Crear cuenta en Supabase.
- Crear cuenta en Sentry.
- Registrar dominio.
- Preparar plantilla .env.example.
- Documentar todo en este archivo.
