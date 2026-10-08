# Proceso de Seleccion y Contratacion

## 1. Proposito

Definir el proceso completo para contratar al primer desarrollador del SaaS. Objetivo: contratar en 4-6 semanas a un dev full-stack senior con experiencia en SaaS multi-tenant.

## 2. Perfil del puesto

### Titulo
Desarrollador Full-Stack Senior - SaaS Multi-tenant

### Tipo
- Honorarios (no nomina).
- Tiempo completo (40 h/semana) o part-time (20 h/semana).
- Remoto.
- Duracion inicial: 6 meses (renovable).

### Responsabilidades
- Construir el MVP del SaaS siguiendo el backlog definido.
- Implementar los 10 modulos en orden estricto.
- Escribir tests automatizados (cobertura minima 70%).
- Documentar cada modulo.
- Participar en sprint semanal con demo.
- Colaborar con el titular del proyecto en revisiones.

### Requisitos obligatorios
- 3+ anos con Node.js y TypeScript.
- Experiencia con NestJS o frameworks similares.
- Experiencia con PostgreSQL y diseno de base de datos.
- Experiencia con React y Next.js.
- Experiencia con Git y trabajo con PRs.
- Espanol nativo.
- Disponibilidad minima 20 h/semana.
- Acepta firmar NDA y cesion de derechos.

### Deseables
- Experiencia con Prisma o TypeORM.
- Experiencia con RLS en PostgreSQL.
- Experiencia con PWA y Service Workers.
- Experiencia con Mercado Pago o Stripe.
- Experiencia previa en SaaS multi-tenant.
- Ingles tecnico.

### Ofrecemos
- Proyecto con backlog completo (no improvisar).
- Stack moderno y bien definido.
- Documentacion exhaustiva.
- Pago puntual.
- Autonomia tecnica.
- Posibilidad de crecimiento a CTO.

## 3. Rango salarial

### Referencias de mercado Mexico (2026)
- Junior full-stack: $15,000-25,000 MXN/mes.
- Semi-senior: $25,000-40,000 MXN/mes.
- Senior: $40,000-65,000 MXN/mes.
- Tech lead / arquitecto: $65,000-100,000 MXN/mes.

### Propuesta inicial
- Rango: $35,000-55,000 MXN/mes segun experiencia.
- Modalidad: honorarios con factura mensual.
- Pago contra entrega de sprint (semanal o quincenal).

### Presupuesto anual estimado
- Un dev senior full-time: $480,000-660,000 MXN/ano.
- Un dev senior part-time (20h): $240,000-330,000 MXN/ano.

## 4. Canales de publicacion

| Canal | Costo | Velocidad | Calidad |
|---|---|---|---|
| LinkedIn | Gratis (organico) | Media | Alta |
| Red personal | Gratis | Rápida | Alta |
| Workana | Comision 10-20% | Rápida | Media |
| Upwork | Comision 10% | Rápida | Media |
| GetOnBoard | Gratis / Premium | Media | Alta |
| Torre | Gratis | Media | Alta |
| Grupos de Discord/Slack de devs | Gratis | Rápida | Media |
| Comunidades universitarias | Gratis | Lenta | Media |

### Recomendacion
Publicar en LinkedIn + red personal + Workana + GetOnBoard. Costo total: $0.

## 5. Filtro de candidatos

### Criterios de descarte automatico
- No tiene GitHub con proyectos publicos.
- No tiene experiencia con TypeScript.
- Pide pago 100% por adelantado.
- No acepta firmar NDA.
- No acepta cesion de derechos.
- No puede dar referencias.
- Pide exclusividad del proyecto (que no pueda trabajar en otros).

### Criterios de priorizacion
- Experiencia previa en SaaS.
- Portafolio con proyectos multi-tenant.
- Contribuciones a proyectos open source.
- Referencias verificables.
- Proactividad en la primera conversacion.
- Pregunta detalles del proyecto antes de aceptar.

### Meta
- 5-10 candidatos filtrados para entrevistar.
- 3-5 entrevistas realizadas.
- 1-2 pruebas tecnicas aplicadas.
- 1 contratado.

## 6. Guion de entrevista (45 min)

### Minutos 0-5 - Presentacion
"Gracias por el interes. Soy [tu nombre], titular del proyecto. Te cuento brevemente de que se trata y luego me cuentas de ti."

(Describir el SaaS en 2 minutos.)

### Minutos 5-20 - Experiencia tecnica
Preguntas:
1. Cuentame de tu experiencia con Node.js y TypeScript.
2. Has trabajado con NestJS? Que tal te parecio?
3. Has trabajado con PostgreSQL? Que experiencia tienes con RLS?
4. Has construido SaaS multi-tenant antes?
5. Como manejas migraciones de base de datos?
6. Has trabajado con PWA y Service Workers?
7. Has integrado pasarelas de pago?
8. Como manejas autenticacion y autorizacion?

### Minutos 20-30 - Forma de trabajo
Preguntas:
1. Como trabajas con Git y PRs?
2. Como manejas la comunicacion de bloqueantes?
3. Has trabajado en equipos distribuidos?
4. Cual es tu disponibilidad semanal?
5. Como estimas tareas?
6. Que haces cuando no entiendes algo?
7. Como manejas la presion de deadlines?

### Minutos 30-40 - Proyecto
Preguntas:
1. Que te parece el proyecto? (Escuchar su reaccion.)
2. Que preguntas tienes sobre el stack o el alcance?
3. Cuanto tiempo crees que tomaria el MVP?
4. Que riesgos ves?
5. Como abordarias el primer sprint?

### Minutos 40-45 - Cierre
"Que expectativa economica tienes? Puedes firmar NDA y cesion de derechos? Cuando podrias empezar?"

## 7. Prueba tecnica (opcional pero recomendada)

### Objetivo
Verificar que el candidato puede construir codigo de calidad en el stack definido.

### Duracion
4-6 horas.

### Pago
$1,500-3,000 MXN por la prueba (para respetar el tiempo del candidato).

### Ejercicio sugerido
"Construye una API REST minima con NestJS + PostgreSQL que tenga:
- Un endpoint POST /organizaciones que cree una organizacion.
- Un endpoint GET /organizaciones que liste solo las organizaciones del usuario autenticado (simular auth con un header).
- Un endpoint POST /ligas que cree una liga dentro de una organizacion.
- Politica RLS en PostgreSQL que aisle datos por organizacion.
- Tests automatizados para los 3 endpoints.
- Docker-compose para levantar PostgreSQL.
- README con instrucciones."

### Criterios de evaluacion
- Codigo limpio y organizado.
- Uso correcto de NestJS.
- Uso correcto de Prisma o TypeORM.
- RLS implementado correctamente.
- Tests funcionales.
- README claro.
- Uso de Git con commits significativos.

### Tiempo de revision
1-2 horas por parte del titular.

## 8. Criterios de decision

### Senales verdes
- Experiencia demostrable en SaaS.
- Portafolio con proyectos reales.
- Comunicacion clara.
- Preguntas inteligentes.
- Proactividad.
- Acepta NDA y cesion sin dudar.
- Disponibilidad compatible.
- Expectativa economica dentro del rango.

### Senales amarillas
- Cambia de stack con frecuencia.
- No puede dar referencias.
- Pide cambios al proyecto antes de empezar.
- No tiene claro su disponibilidad.
- Tiene otros proyectos en paralelo (sin transparencia).

### Senales rojas
- No acepta firmar NDA.
- No acepta cesion de derechos.
- Pide pago 100% por adelantado.
- No tiene GitHub activo.
- No puede explicar proyectos previos.
- Presiona para cerrar rapido.
- Pide exclusividad del proyecto.

## 9. Documentos a firmar antes del kickoff

1. **NDA** (legal/nda.md) - adaptado al candidato.
2. **Cesion de derechos** - sobre todo el codigo producido.
3. **Contrato por honorarios** - con alcance, entregables, plazos y forma de pago.
4. **Clausula de no competencia** - 12 meses, Mexico.
5. **Acuerdo de confidencialidad post-relacion** - 5 anos.

Recomendacion: consultar con abogado antes de firmar. Costo: $3,000-8,000 MXN.

## 10. Onboarding del contratado

### Dia 1 - Accesos
- Correo corporativo.
- Invitacion a GitHub (Write en ramas, no en main).
- Acceso a Notion o herramienta de documentacion.
- Acceso a Railway o Render (staging).
- Acceso a Supabase.
- Acceso a Mercado Pago test.

### Dia 1-2 - Contexto
- Leer la documentacion completa (docs/, legal/).
- Revisar el modelo entidad-relacion.
- Revisar el backlog en Issues.
- Revisar el tablero.

### Dia 3 - Kickoff tecnico
- Reunion de 2 horas.
- Explicar vision, roadmap y convenciones.
- Definir sprint 1.
- Definir canal de comunicacion diario.
- Definir horarios y disponibilidad.

### Dia 4-5 - Primer PR
- Crear rama develop.
- Configurar CI/CD basico.
- Primer commit con estructura inicial.
- Primer PR revisado.

### Semana 2 en adelante
- Sprints semanales con demo el viernes.
- Revision de PRs por el titular.
- Retrospectiva cada 2 semanas.

## 11. Forma de pago

### Modalidad
- Honorarios (no nomina).
- Factura mensual con CFDI.
- Pago quincenal o mensual, segun acuerdo.

### Estructura recomendada
- 50% al inicio del mes, 50% al final (contra entrega).
- O pago mensual completo contra entrega de sprint.

### Retenciones
- Retener ISR e IVA segun corresponda.
- Solicitar factura antes de pagar.

### Metodo
- Transferencia SPEI.
- Guardar comprobantes.

## 12. Plantilla de vacante (LinkedIn)

Titulo: Desarrollador Full-Stack Senior - SaaS Multi-tenant (Remoto)

Descripcion:

Buscamos un desarrollador full-stack senior para construir el MVP de un SaaS de administracion de ligas de futbol. El producto ya esta disenado, documentado y con backlog completo. Buscamos a alguien que ejecute con calidad.

Stack:
- Node.js + TypeScript + NestJS
- PostgreSQL con RLS
- React + Next.js
- PWA con offline
- Mercado Pago

Buscamos:
- 3+ anos con Node.js y TypeScript
- Experiencia con NestJS
- Experiencia con PostgreSQL y RLS
- Experiencia con React y Next.js
- Espanol nativo
- Disponibilidad 20+ h/semana
- Acepta firmar NDA y cesion de derechos

Ofrecemos:
- Proyecto con backlog completo
- Stack moderno
- Documentacion exhaustiva
- Pago puntual ($35,000-55,000 MXN/mes segun experiencia)
- Autonomia tecnica
- Posibilidad de crecer a CTO

Interesados: enviar CV + GitHub + expectativa economica a [email].

## 13. Plantilla de mensaje de rechazo

Hola [nombre]:

Gracias por tu interes en el proyecto. En esta ocasion decidimos avanzar con otro candidato cuya experiencia se ajusta mejor a nuestras necesidades actuales.

Te deseamos mucho exito en tu busqueda.

Saludos,
[tu nombre]

## 14. Plantilla de oferta

Hola [nombre]:

Nos gusto mucho tu perfil y queremos que formes parte del proyecto. Te proponemos:

- Puesto: Desarrollador Full-Stack Senior
- Modalidad: Honorarios, remoto
- Dedicacion: [20 / 40] h/semana
- Tarifa: $[monto] MXN/mes
- Duracion inicial: 6 meses
- Inicio: [fecha]

Antes de empezar necesitamos:
- NDA firmado
- Cesion de derechos firmada
- Contrato por honorarios firmado
- RFC y datos fiscales
- Cuenta bancaria para SPEI

Confirmame si estas de acuerdo y agendamos el kickoff.

Saludos,
[tu nombre]

## 15. Presupuesto del proceso

| Concepto | Costo |
|---|---|
| Publicacion en LinkedIn | $0 |
| Publicacion en Workana | $0 |
| Publicacion en GetOnBoard | $0 |
| Prueba tecnica al candidato finalista | $1,500-3,000 MXN |
| Revision legal de contratos | $3,000-8,000 MXN |
| **Total estimado** | **$4,500-11,000 MXN** |

## 16. Riesgos y mitigaciones

| Riesgo | Mitigacion |
|---|---|
| No encontrar candidato en 4 semanas | Ampliar a Workana, Upwork |
| Candidato pide mas del presupuesto | Negociar part-time o por sprint |
| Candidato no acepta NDA | Descartar inmediatamente |
| Candidato abandona a mitad | Documentacion total + repo propio |
| Calidad baja | Prueba tecnica + revision de PRs |
| Plagio de codigo | Clausula de cesion + auditoria |
| Fuga de informacion | Acceso limitado por capas |

## 17. Checklist del proceso

### Antes de publicar
- [ ] Brief tecnico listo (docs/brief-desarrollador.md).
- [ ] Rango salarial definido.
- [ ] Presupuesto aprobado.
- [ ] Plantilla de vacante lista.
- [ ] Abogado consultado para contratos.

### Durante el proceso
- [ ] Vacante publicada en 3+ canales.
- [ ] 5-10 candidatos filtrados.
- [ ] 3-5 entrevistas realizadas.
- [ ] Prueba tecnica aplicada a finalistas.
- [ ] Referencias verificadas.

### Al contratar
- [ ] NDA firmado.
- [ ] Cesion de derechos firmada.
- [ ] Contrato por honorarios firmado.
- [ ] Datos fiscales recibidos.
- [ ] Accesos configurados (limitados).
- [ ] Kickoff agendado.

### Despues del kickoff
- [ ] Sprint 1 definido.
- [ ] Canal de comunicacion activo.
- [ ] Primer PR en la primera semana.
- [ ] Revision semanal agendada.

## 18. Proximos Pasos

- [ ] Definir rango salarial exacto.
- [ ] Aprobar presupuesto.
- [ ] Publicar vacante en LinkedIn.
- [ ] Publicar vacante en red personal.
- [ ] Publicar vacante en Workana.
- [ ] Publicar vacante en GetOnBoard.
- [ ] Agendar primeras entrevistas.
- [ ] Preparar prueba tecnica.
- [ ] Consultar abogado para contratos.
