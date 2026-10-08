# Desarrollo del MVP

## 1. Proposito

Definir el plan de construccion del MVP: alcance, orden de sprints, dependencias, criterios de terminado, metricas de avance y validacion. Es el documento maestro que guia al desarrollador durante los 6-9 meses de construccion.

## 2. Alcance del MVP

37 modulos agrupados en 10 epicas. Total: 139 historias de usuario en GitHub Issues.

| Epica | Nombre | Historias | Dependencia |
|---|---|---|---|
| 1 | Cimientos multi-tenant | 12 | Ninguna |
| 2 | Registro de equipos y jugadores | 14 | Epica 1 |
| 3 | Trust Engine financiero | 15 | Epica 2 |
| 4 | Torneos y programacion | 16 | Epica 3 |
| 5 | Operacion de partidos | 15 | Epica 4 |
| 6 | Disciplina y justicia | 14 | Epica 5 |
| 7 | Competencia y premios | 13 | Epica 6 |
| 8 | Experiencia de usuario | 14 | Epica 7 |
| 9 | Confianza y cumplimiento | 14 | Epica 8 |
| 10 | Reportes y BI | 12 | Epica 9 |

Regla: no se construye una epica sin que las dependencias esten listas.

## 3. Duracion estimada

| Escenario | Desarrolladores | Duracion |
|---|---|---|
| 1 dev senior full-time | 1 | 6-9 meses |
| 2 devs senior full-time | 2 | 4-6 meses |
| 1 dev senior + 1 junior | 2 | 5-7 meses |

## 4. Plan de sprints

Sprints semanales. Cada sprint cierra con demo el viernes.

### Sprint 0 - Preparacion (semana 0)

- Configuracion del entorno.
- Creacion de cuentas y accesos.
- Setup de CI/CD.
- Definicion de convenciones.

Entregable: entorno listo para sprint 1.

### Sprint 1-2 - Epica 1: Cimientos multi-tenant

Sprint 1:
- HU-1.1 Crear organizacion.
- HU-1.2 Crear complejo.
- HU-1.3 Crear liga.
- HU-1.9 Aislamiento RLS (base).

Sprint 2:
- HU-1.4 Gestionar usuarios y roles.
- HU-1.5 Asignar alcance de permisos.
- HU-1.6 Onboarding wizard.
- HU-1.11 Auditoria de accesos.
- HU-1.12 Seleccion de contexto.

Demo: crear organizacion, crear complejo, crear liga, verificar aislamiento.

### Sprint 3-4 - Epica 2: Registro de equipos y jugadores

Sprint 3:
- HU-2.1 Registro de equipo.
- HU-2.2 Delegado y subdelegado.
- HU-2.3 Aprobacion de equipo.
- HU-2.4 Registro de jugador.
- HU-2.5 Validacion de identidad.

Sprint 4:
- HU-2.6 Carnet digital con QR.
- HU-2.7 Elegibilidad automatica.
- HU-2.8 Gestion de menores y tutores.
- HU-2.9 Ventanas de transferencia.
- HU-2.10 Carga masiva por CSV.
- HU-2.11 Historial del jugador.
- HU-2.12 Deteccion de duplicados.
- HU-2.13 Panel de equipo.
- HU-2.14 Bloqueo por deuda o sancion.

Demo: registrar equipo y 15 jugadores, validar QR, verificar elegibilidad.

### Sprint 5-7 - Epica 3: Trust Engine financiero

Sprint 5:
- HU-3.1 Conceptos de cobro configurables.
- HU-3.2 Billetera del equipo.
- HU-3.3 Politica de fianza.

Sprint 6:
- HU-3.4 Retencion de fianza.
- HU-3.5 Deduccion automatica por incumplimiento.
- HU-3.6 Reposicion de fianza.
- HU-3.7 Liberacion de fianza al cierre.
- HU-3.8 Integracion con pasarela de pago.

Sprint 7:
- HU-3.9 Cobranza automatica y recordatorios.
- HU-3.10 Bloqueo por falta de pago.
- HU-3.11 Reconciliacion de pagos.
- HU-3.12 Devoluciones.
- HU-3.13 Disputas de fianza.
- HU-3.14 Reporte financiero para admin.
- HU-3.15 Panel de billetera para equipo.

Demo: equipo paga, retiene fianza, se ejecuta por incumplimiento, se devuelve al cierre.

### Sprint 8-10 - Epica 4: Torneos y programacion

Sprint 8:
- HU-4.1 Ciclo de vida del torneo.
- HU-4.2 Categorias y divisiones.
- HU-4.3 Reglas del torneo.
- HU-4.4 Formato del torneo.

Sprint 9:
- HU-4.5 Registro de canchas.
- HU-4.6 Inventario de slots.
- HU-4.7 Compra de slots por equipos.
- HU-4.16 Control de compra de dias y horarios.

Sprint 10:
- HU-4.8 Programacion manual de partidos.
- HU-4.9 Programacion inteligente con IA (version basica).
- HU-4.10 Prevencion de conflictos.
- HU-4.11 Descansos minimos entre partidos.
- HU-4.12 Reprogramacion de partidos.
- HU-4.13 Estados de partido.
- HU-4.14 Walkover y partidos suspendidos.
- HU-4.15 Publicacion del calendario.

Demo: crear torneo, programar partidos, evitar conflictos, publicar calendario.

### Sprint 11-13 - Epica 5: Operacion de partidos

Sprint 11:
- HU-5.1 Panel del arbitro.
- HU-5.2 Apertura de acta.
- HU-5.3 Alineacion digital.
- HU-5.4 Validacion QR en cancha.

Sprint 12:
- HU-5.5 Registro de eventos del partido.
- HU-5.6 Registro de incidencias.
- HU-5.7 Cierre de acta con firma digital.
- HU-5.8 Modo offline del acta.

Sprint 13:
- HU-5.9 Sincronizacion al recuperar senal.
- HU-5.10 Disparo automatico de sanciones.
- HU-5.11 Disparo automatico de fianzas.
- HU-5.12 Actualizacion automatica de tabla.
- HU-5.13 Ventana de disputa del acta.
- HU-5.14 Correccion de acta.
- HU-5.15 Acta publica y consulta historica.

Demo: arbitro llena acta desde movil, incluso sin internet, se sincroniza.

### Sprint 14-15 - Epica 6: Disciplina y justicia

Sprint 14:
- HU-6.1 Motor de sanciones automaticas.
- HU-6.2 Tipos de sancion configurables.
- HU-6.3 Escalamiento por reincidencia.
- HU-6.4 Historial disciplinario del jugador.

Sprint 15:
- HU-6.5 Apertura de disputa.
- HU-6.6 Evidencia y descargo.
- HU-6.7 Resolucion de disputa nivel 1.
- HU-6.8 Comite disciplinario nivel 2.
- HU-6.9 Apelacion a nivel 3.
- HU-6.10 Reversion y recalculo tras resolucion.
- HU-6.11 Notificaciones disciplinarias.
- HU-6.12 Sanciones economicas y su ejecucion.
- HU-6.13 Expulsion de jugador o equipo.
- HU-6.14 Reporte disciplinario para admin.

Demo: jugador sancionado, disputa abierta, resolucion con recalculo.

### Sprint 16-17 - Epica 7: Competencia y premios

Sprint 16:
- HU-7.1 Tabla de posiciones con criterios de desempate.
- HU-7.2 Estadisticas individuales de jugadores.
- HU-7.3 Fair play por equipo.
- HU-7.4 Fondo de premios.

Sprint 17:
- HU-7.5 Calculo automatico de premios colectivos.
- HU-7.6 Calculo automatico de premios individuales.
- HU-7.7 Entrega y registro de premios.
- HU-7.8 Cierre oficial del torneo.
- HU-7.9 Coronacion de campeon y subcampeon.
- HU-7.10 Archivo por temporada.
- HU-7.11 Consulta historica de torneos.
- HU-7.12 Reporte de competencia para admin.
- HU-7.13 Trofeos digitales y reconocimientos.

Demo: cerrar torneo, coronar campeon, entregar premios.

### Sprint 18-19 - Epica 8: Experiencia de usuario

Sprint 18:
- HU-8.1 Panel del admin de liga.
- HU-8.2 Panel del equipo.
- HU-8.3 Panel del jugador.
- HU-8.4 Panel del arbitro.
- HU-8.5 Panel de prensa.

Sprint 19:
- HU-8.6 Link publico de la liga.
- HU-8.7 Link publico del equipo.
- HU-8.8 Link publico del jugador.
- HU-8.9 Motor de notificaciones multi-canal.
- HU-8.10 Plantillas de notificacion configurables.
- HU-8.11 Bitacora de comunicacion.
- HU-8.12 PWA instalable.
- HU-8.13 Modo oscuro y accesibilidad.
- HU-8.14 Onboarding guiado en primer uso.

Demo: navegar por paneles, recibir notificaciones, instalar PWA.

### Sprint 20 - Epica 9: Confianza y cumplimiento

- HU-9.1 Auditoria centralizada e inmutable.
- HU-9.2 Consulta y filtrado de auditoria.
- HU-9.3 Exportacion de auditoria.
- HU-9.4 Soporte interno con tickets.
- HU-9.5 SLA y escalamiento de tickets.
- HU-9.6 Base de conocimiento.
- HU-9.7 Consentimiento de datos personales.
- HU-9.8 Consentimiento de menores.
- HU-9.9 a HU-9.12 Derechos ARCO.
- HU-9.13 Bitacora legal y cumplimiento.
- HU-9.14 Retencion y borrado seguro de datos.

Demo: ejercer derechos ARCO, ver auditoria, abrir ticket.

### Sprint 21 - Epica 10: Reportes y BI

- HU-10.1 Dashboard del superadmin SaaS.
- HU-10.2 Dashboard del admin de organizacion.
- HU-10.3 Dashboard del admin de liga.
- HU-10.4 KPIs del producto.
- HU-10.5 KPIs del negocio.
- HU-10.6 KPIs de la liga.
- HU-10.7 KPIs deportivos.
- HU-10.8 Reporte ejecutivo exportable.
- HU-10.9 Analitica de uso del SaaS.
- HU-10.10 Exportacion universal a CSV/PDF.
- HU-10.11 Reportes programados por email.
- HU-10.12 Alertas inteligentes por umbral.

Demo: dashboards por rol, exportaciones, alertas.

### Sprint 22 - Estabilizacion y MVP v1.0

- Correccion de bugs.
- Optimizacion de rendimiento.
- Auditoria de seguridad.
- Documentacion final.
- Preparacion para pilotos.

Entregable: MVP v1.0 listo para produccion.

## 5. Criterios de terminado por epica

Cada epica se considera terminada cuando:

- Todas las historias estan implementadas.
- Criterios de aceptacion cumplidos.
- Tests automatizados pasando (cobertura minima 70%).
- Documentacion actualizada.
- Demo realizada.
- Aprobacion del titular.
- Deploy a staging exitoso.

## 6. Gestion de dependencias

Regla de oro: no se construye un modulo sin sus dependencias listas.

Ejemplos:
- Epica 2 (registro) requiere Epica 1 (multi-tenant).
- Epica 3 (financiero) requiere Epica 2 (jugadores con identidad).
- Epica 5 (actas) requiere Epica 4 (partidos programados).
- Epica 6 (sanciones) requiere Epica 5 (actas cerradas).

Si una dependencia no esta lista, se pausa el trabajo o se construye mock temporal.

## 7. Metricas de avance

| Metrica | Como se mide | Meta |
|---|---|---|
| Historias completadas | Issues cerrados | 139 al final |
| Cobertura de tests | Reporte de Jest | >70% |
| Deuda tecnica | Issues tecnicos abiertos | <10% del total |
| Bugs abiertos | Issues de bug | <5 criticos |
| Velocidad por sprint | Historias por sprint | 4-7 |
| Uptime en staging | Monitoreo | >99% |
| Tiempo de build | CI/CD | <5 min |
| Tamano del bundle | Analisis | <500 KB inicial |

## 8. Gestion de riesgos

| Riesgo | Probabilidad | Impacto | Mitigacion |
|---|---|---|---|
| Desarrollador no entrega a tiempo | Media | Alto | Sprints semanales con demo |
| Calidad de codigo baja | Media | Alto | Revision de PRs + tests obligatorios |
| Cambios de alcance | Alta | Medio | Congelar scope del MVP |
| Bug critico en produccion | Baja | Alto | Testing + monitoreo + rollback |
| Perdida de datos | Baja | Muy alto | Backups diarios + pruebas de restauracion |
| Costos de infraestructura altos | Media | Medio | Monitoreo mensual + alertas |
| Abandono del desarrollador | Media | Alto | Documentacion total + repo propio |
| Dependencia de un solo dev | Alta | Alto | Documentar + grabar videos + acceso por capas |

## 9. Criterios de aceptacion del MVP

El MVP v1.0 esta terminado cuando:

1. Una liga de futbol 7 se configura sin codigo.
2. Un delegado registra equipo y 15 jugadores sin ayuda.
3. Un admin valida identidades en lote.
4. Un equipo paga inscripcion y retiene fianza.
5. El sistema cobra arbitraje y cancha automaticamente.
6. Un jugador inhabilitado no puede alinearse.
7. Un arbitro llena acta desde movil, incluso sin internet.
8. El sistema aplica sanciones y ejecuta fianzas automaticamente.
9. Una disputa se resuelve con evidencia y auditoria.
10. Al cierre del torneo, se devuelve fianza no ejecutada.
11. Un torneo completo se opera de apertura a campeon.
12. Una transferencia fuera de ventana se bloquea.
13. Un menor sin consentimiento de tutor no se registra.
14. Un pago duplicado o fallido se reconcilia.
15. Un usuario puede ejercer derechos ARCO.
16. Tests de aislamiento multi-tenant pasan al 100%.
17. Uptime en staging >99% durante 2 semanas.
18. Todos los criterios de las 10 epicas cumplidos.

## 10. Validacion con Liga Cero

Antes de pilotos reales, el MVP se valida contra la Liga Cero.

### Que es la Liga Cero
Modelo operativo simulado con datos sinteticos realistas. No es un cliente real.

### Datos de la Liga Cero
- 24 equipos.
- 2 categorias.
- 360 jugadores.
- 3 canchas.
- 8 arbitros.
- Torneo de 6 meses.

### Escenarios de validacion

Escenario 1 - Registro
- Registrar 24 equipos.
- Registrar 360 jugadores.
- Validar elegibilidad.

Escenario 2 - Torneo
- Crear torneo con reglas.
- Generar fixture completo.
- Programar 132 partidos.

Escenario 3 - Operacion
- Abrir actas, registrar eventos, cerrar.
- Verificar tabla y sanciones.

Escenario 4 - Financiero
- Simular pagos, fianzas, ejecuciones.
- Verificar contabilidad.

Escenario 5 - Disputas
- Abrir 5 disputas de distintos tipos.
- Resolverlas y verificar recalculos.

Escenario 6 - Cierre
- Cerrar torneo.
- Coronar campeon.
- Entregar premios.
- Devolver fianzas.

### Resultado esperado
- 0 errores criticos.
- Tiempo de respuesta <500ms P95.
- Todos los criterios de aceptacion cumplidos.

## 11. Preparacion para pilotos

### Antes del piloto
- MVP v1.0 desplegado en produccion.
- Liga Cero validada sin errores criticos.
- Documentacion lista.
- Soporte configurado (WhatsApp, email).
- Onboarding preparado.

### Con los 4 pilotos
- Acceso gratuito por 6 meses.
- Datos reales.
- Sesiones semanales de feedback.
- Soporte prioritario.
- Iteracion rapida.

### Metricas del piloto
- Adopcion: >80% del admin.
- Satisfaccion: NPS >50.
- Bugs: <5 por mes.
- Uptime: >99.5%.
- Conversion a cliente pagando: >50%.

## 12. Forma de trabajo

### Sprints semanales
- Lunes: planificacion del sprint.
- Martes a jueves: desarrollo.
- Viernes: demo y retrospectiva.

### Comunicacion
- Diaria: bloqueantes por WhatsApp.
- Semanal: sprint review.
- Quincenal: retrospectiva.

### GitHub
- 1 issue = 1 rama = 1 PR.
- Todo merge via PR con revision.
- Nada de push directo a main o develop.

### Definition of Done
- Codigo en rama feature.
- Tests pasando.
- Linter sin errores.
- Type check sin errores.
- PR revisado y aprobado.
- Criterios de aceptacion cumplidos.
- Merge a develop.
- Deploy a staging verificado.

## 13. Presupuesto de construccion

### Escenario 1 dev senior full-time
- Tarifa mensual: $40,000-55,000 MXN.
- Duracion: 6-9 meses.
- Costo total: $240,000-495,000 MXN.

### Escenario 2 devs
- Tarifa mensual: $70,000-90,000 MXN (2 devs).
- Duracion: 4-6 meses.
- Costo total: $280,000-540,000 MXN.

### Costos adicionales
- Infraestructura: $25-116 USD/mes.
- Servicios: $50-150 USD/mes.
- Legal: $10,000-30,000 MXN una vez.
- Total adicional: $20,000-50,000 MXN.

### Presupuesto total estimado
- Con 1 dev: $260,000-545,000 MXN.
- Con 2 devs: $300,000-590,000 MXN.

## 14. Proximos Pasos

- Crear ramas main y develop en GitHub.
- Configurar proteccion de ramas.
- Configurar CI/CD.
- Crear cuentas de servicios (Supabase, Railway, Sentry).
- Publicar vacante de desarrollador.
- Filtrar y entrevistar candidatos.
- Contratar al primer dev.
- Ejecutar kickoff.
- Iniciar sprint 1.
