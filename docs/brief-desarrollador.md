# Brief Tecnico para el Desarrollador

## 1. Contexto del proyecto

Estamos construyendo un SaaS de administracion de ligas de futbol para el mercado mexicano. El producto resuelve 3 dolores reales:

1. Morosidad alta (30-40%).
2. Efectivo sin trazabilidad.
3. Admin trabajando 24/7.

El producto esta disenado, documentado y con backlog completo. Falta construirlo.

## 2. Estado actual

Todo esta en GitHub: https://github.com/AutoElekIA/liga-saas

Contenido del repositorio:
- /docs - 15 documentos (vision, MVP, modelo de datos, arquitectura, pricing, etc.)
- /legal - 7 documentos legales (NDA, contratos, politicas)
- /scripts - Scripts de automatizacion
- 139 historias de usuario en Issues
- Tablero con roadmap por oleadas

Antes de empezar, LEE:
1. docs/01-vision.md
2. docs/02-mvp-scope.md
3. docs/03-modelo-entidad-relacion.md
4. docs/04-arquitectura-tecnica.md
5. docs/07-glosario.md

## 3. Stack tecnologico obligatorio

### Backend
- Node.js 20+ con TypeScript
- NestJS
- Prisma (ORM)
- PostgreSQL 16+ con Row-Level Security (RLS)
- Redis (cache y colas)
- Zod para validacion

### Frontend
- React 18 con Next.js 14+
- TypeScript
- Tailwind CSS + shadcn/ui
- Zustand o TanStack Query
- React Hook Form + Zod

### Mobile (PWA)
- Service Workers para offline
- IndexedDB para cache
- Web Push API

### Infraestructura
- Railway o Render (MVP)
- Supabase Auth (o Clerk)
- Cloudflare R2 o AWS S3 (archivos)
- GitHub Actions (CI/CD)

### Integraciones
- Mercado Pago (pagos)
- Meta WhatsApp Cloud API o Twilio (notificaciones)
- Resend o SendGrid (email)

Stack no negociable. Si tienes experiencia con alternativas, discute con el titular antes de cambiarlo.

## 4. Alcance del MVP

37 modulos en 10 epicas. Todas las historias estan en Issues del repositorio con criterios de aceptacion.

### Orden obligatorio de construccion

1. Cimientos multi-tenant (organizacion, complejo, liga, roles, RLS)
2. Registro de equipos y jugadores (equipos, jugadores, carnets, tutores)
3. Trust Engine financiero (fianzas, billetera, cobros, pagos)
4. Torneos y programacion (torneos, reglas, calendario, slots)
5. Operacion de partidos (actas, alineacion, QR, offline)
6. Disciplina y justicia (sanciones, disputas, apelaciones)
7. Competencia y premios (tabla, estadisticas, premios)
8. Experiencia de usuario (paneles, links publicos, notificaciones)
9. Confianza y cumplimiento (auditoria, soporte, ARCO)
10. Reportes y BI (dashboards, KPIs, exportaciones)

NO se construye una epica sin que las dependencias esten listas.

### Fuera del MVP
- IA de programacion (fase 3)
- App nativa (fase 3)
- Streaming (fase 4)
- Marketplace de patrocinadores (fase 4)
- Multi-pais (fase 4)

## 5. Entregables del MVP

- Repositorio backend funcional con API documentada (OpenAPI).
- Repositorio frontend funcional (React + Next.js).
- PWA instalable con modo offline.
- Base de datos con migraciones versionadas.
- Tests automatizados (cobertura minima 70% en modulos criticos).
- CI/CD con GitHub Actions.
- Documentacion tecnica de cada modulo.
- Manual de deploy y operacion.
- Manual de usuario (para admin, equipo, arbitro).

## 6. Criterios de aceptacion tecnicos

El MVP esta listo cuando:

1. Un usuario puede registrarse y crear una organizacion.
2. Un admin configura una liga con reglas sin tocar codigo.
3. Un delegado registra equipo y 15 jugadores sin ayuda.
4. Un equipo paga inscripcion y retiene fianza.
5. El sistema cobra arbitraje y cancha automaticamente.
6. Un jugador inhabilitado no puede alinearse.
7. Un arbitro llena acta desde movil, incluso sin internet.
8. El sistema aplica sanciones y ejecuta fianzas automaticamente.
9. Una disputa se resuelve con evidencia y auditoria.
10. Al cierre del torneo, se devuelve fianza no ejecutada.
11. Tests de aislamiento multi-tenant pasan al 100%.
12. Uptime en staging >99% durante 2 semanas.

## 7. Forma de trabajo

### GitHub
- Todo el trabajo en el repo: https://github.com/AutoElekIA/liga-saas
- Ramas: feature/HU-XX-nombre
- Pull Requests a develop, luego a main.
- Commits con prefijo: feat, fix, docs, chore, test.
- Nada de push directo a main. La rama esta protegida.
- Un issue = una HU = una rama = un PR.

### Entregas
- Sprints semanales con demo el viernes.
- Actualizacion diaria en el issue correspondiente.
- Bloqueantes comunicados el mismo dia.

### Documentacion
- Cada modulo tiene README en /backend/src/modulos/nombre/.
- API documentada con OpenAPI.
- Comentarios en codigo solo cuando sea necesario.

## 8. Confidencialidad y cesion de derechos

Antes de empezar, firmar:
- NDA (legal/nda.md).
- Cesion total de derechos de codigo.
- Clausula de no competencia por 12 meses.

Todo el codigo, disenos y documentacion son propiedad exclusiva del titular del proyecto.

## 9. Forma de pago

### Modalidad recomendada para MVP
- Honorarios (no nomina).
- Factura mensual con CFDI.
- Pago contra entrega de sprint.
- Monto: a negociar segun experiencia.

### Referencias de mercado (Mexico)
- Desarrollador full-stack senior: $30,000-60,000 MXN/mes.
- Desarrollador full-stack junior: $15,000-25,000 MXN/mes.
- Agencia de desarrollo: $80,000-200,000 MXN/mes.

### Duracion estimada del MVP
6 a 9 meses con 1 desarrollador senior full-time.
4 a 6 meses con 2 desarrolladores.

## 10. Perfil buscado

### Obligatorio
- 3+ anos de experiencia con Node.js y TypeScript.
- Experiencia con NestJS o frameworks similares.
- Experiencia con PostgreSQL y diseno de base de datos.
- Experiencia con React y Next.js.
- Experiencia con Git y trabajo en equipo.
- Espanol nativo.

### Deseable
- Experiencia con Prisma o TypeORM.
- Experiencia con RLS en PostgreSQL.
- Experiencia con PWA y Service Workers.
- Experiencia con Mercado Pago o Stripe.
- Experiencia con SaaS multi-tenant.
- Ingles tecnico.

### No buscamos
- Freelancers sin experiencia en proyectos grandes.
- Agencias que quieran imponer su stack.
- Perfiles que no acepten firmar NDA.
- Perfiles que no acepten cesion de derechos.

## 11. Proceso de seleccion

### Etapa 1 - Filtro
- Revisar portafolio en GitHub.
- Revisar proyectos previos (SaaS idealmente).

### Etapa 2 - Entrevista
- Duracion: 45 min.
- Temas: experiencia, stack, disponibilidad, expectativa economica.
- Preguntar: que haria en el primer sprint.

### Etapa 3 - Prueba tecnica (opcional)
- Pequeno ejercicio pagado: $1,500-3,000 MXN.
- Ejemplo: construir un endpoint CRUD con RLS.
- Duracion: 4-6 horas.

### Etapa 4 - Contratacion
- Firmar NDA + cesion de derechos.
- Definir tarifa y forma de pago.
- Agendar kick-off.

## 12. Preguntas para el desarrollador

Antes de contratar, hacer estas preguntas:

1. Cual es tu experiencia con Node.js y TypeScript?
2. Has trabajado con NestJS?
3. Has trabajado con PostgreSQL y RLS?
4. Has construido SaaS multi-tenant antes?
5. Has trabajado con PWA y offline?
6. Cual es tu experiencia con React y Next.js?
7. Has integrado pasarelas de pago?
8. Como manejas ramas y PRs en Git?
9. Cual es tu disponibilidad (horas/semana)?
10. Cual es tu expectativa economica mensual?
11. Puedes firmar NDA y cesion de derechos?
12. Cual es tu plazo estimado para el MVP?

## 13. Red flags

### Del desarrollador
- No acepta firmar NDA.
- No acepta cedion de derechos.
- No tiene GitHub con proyectos publicos.
- Quiere imponer stack diferente.
- Pide pago 100% por adelantado.
- No da referencias.
- No da estimaciones claras.
- No pregunta detalles del proyecto.

### Del titular (autochequeo)
- Contratar sin NDA.
- Contratar sin cesion de derechos.
- Contratar sin prueba tecnica.
- Prometer cosas fuera de alcance.
- No definir sprints claros.
- No dar acceso a documentacion completa.

## 14. Kickoff del proyecto

### Antes del kickoff
- [ ] NDA firmado.
- [ ] Cesion de derechos firmada.
- [ ] Tarifa y forma de pago definidas.
- [ ] Contrato por honorarios firmado.
- [ ] Acceso al repositorio configurado (permisos limitados).
- [ ] Correo corporativo creado.
- [ ] Acceso a herramientas (Railway, Supabase, Mercado Pago test).
- [ ] Documentacion leida.

### En el kickoff
- [ ] Presentar vision y roadmap.
- [ ] Explicar stack y convenciones.
- [ ] Definir sprint 1 (Epica 1 - Cimientos multi-tenant).
- [ ] Agendar sprints semanales.
- [ ] Definir canal de comunicacion diario (Slack, WhatsApp).
- [ ] Definir horario de disponibilidad.

### Despues del kickoff
- [ ] Crear rama develop.
- [ ] Configurar CI/CD.
- [ ] Primer PR en la semana 1.

## 15. Metricas de exito del desarrollador

- Entrega por sprint segun lo acordado.
- Calidad de codigo (revision de PRs).
- Cobertura de tests.
- Comunicacion proactiva de bloqueantes.
- Adherencia al stack y convenciones.
- Documentacion al dia.

## 16. Riesgos y mitigaciones

| Riesgo | Mitigacion |
|---|---|
| Desarrollador no entrega a tiempo | Sprints semanales con demo |
| Calidad baja | Revision de PRs + tests obligatorios |
| Fuga de informacion | NDA + acceso limitado + auditoria |
| Abandono a mitad del proyecto | Documentacion total + repo propio |
| Sobre-ingenieria | Disciplina de alcance + backlog claro |
| Costos elevados | MVP simple + revision mensual de gastos |

## 17. Proximos Pasos

- [ ] Publicar vacante (LinkedIn, Workana, Upwork, red personal).
- [ ] Filtrar candidatos (5-10).
- [ ] Entrevistar (3-5).
- [ ] Prueba tecnica (1-2).
- [ ] Contratar (1).
- [ ] Firmar NDA + cesion + contrato.
- [ ] Kickoff y sprint 1.

## 18. Contacto

Titular del proyecto: [tu nombre]
Email: [tu email]
GitHub: https://github.com/AutoElekIA
