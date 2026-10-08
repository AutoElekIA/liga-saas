# Validacion con Liga Cero

## 1. Proposito

Definir como validar el MVP contra la Liga Cero antes de pilotos reales. Objetivo: detectar y resolver bugs criticos en un entorno simulado, sin arriesgar la reputacion con clientes reales.

## 2. Que es la Liga Cero

Modelo operativo simulado con datos sinteticos realistas. No es un cliente real ni una liga fisica. Sirve para:

- Probar el sistema en condiciones controladas.
- Ejecutar escenarios que en la vida real tomarian meses.
- Detectar bugs sin afectar a nadie.
- Entrenar al equipo de soporte.
- Producir casos de exito para material comercial.

## 3. Datos de la Liga Cero

### Configuracion
- Deporte: futbol 7
- Categorias: 2 (Primera y Sub-20)
- Equipos: 24 (12 por categoria)
- Jugadores: 360 (15 por equipo)
- Canchas: 3
- Arbitros: 8
- Duracion del torneo: 6 meses simulados

### Estructura organizacional
- Organizacion: Liga Cero Demo
- Complejo: Complejo Demo Norte
- Canchas: Cancha A, Cancha B, Cancha C
- Liga: Liga Cero 2026
- Torneos: Torneo Apertura 2026

### Datos de equipos
Cada equipo tiene:
- Nombre y escudo.
- Delegado y subdelegado.
- 15 jugadores con documentos, fotos, categorias.
- Billetera con saldo.
- Fianza retenida.
- Historial de partidos.

### Datos de jugadores
Distribucion por edad:
- 18 a 25 anos: 60%
- 26 a 32 anos: 30%
- 33 a 40 anos: 10%

Documentos: todos con identificacion simulada valida.
Fotos: avatares genericos.
Tutores: 20% son menores de 18 con tutor simulado.

## 4. Escenarios de validacion

### Escenario 1 - Setup inicial

Objetivo: verificar configuracion completa.

Pasos:
1. Crear organizacion.
2. Crear complejo con 3 canchas.
3. Crear liga con deporte y reglamento.
4. Crear 2 categorias.
5. Configurar reglas: puntos, desempates, sanciones.
6. Configurar conceptos de cobro.
7. Configurar politica de fianza.
8. Registrar 8 arbitros.
9. Crear slots de 2 usos por semana por cancha.

Resultado esperado:
- Todo configurado sin errores.
- Verificacion visual correcta.
- Tiempo total: menos de 2 horas.

### Escenario 2 - Registro masivo

Objetivo: probar carga masiva y validacion.

Pasos:
1. Cargar 24 equipos por CSV.
2. Cargar 360 jugadores por CSV.
3. Validar identidades en lote.
4. Generar 360 carnets QR.
5. Verificar que no hay duplicados.

Resultado esperado:
- 0 errores en carga.
- 0 duplicados no detectados.
- 360 carnets generados correctamente.
- Tiempo total: menos de 4 horas.

### Escenario 3 - Generacion de torneo

Objetivo: probar creacion de torneo y fixture.

Pasos:
1. Crear torneo con formato liga regular.
2. Inscribir 24 equipos.
3. Generar fixture automatico.
4. Verificar 132 partidos programados (22 jornadas, 6 por jornada).
5. Publicar calendario.

Resultado esperado:
- Fixture generado sin conflictos.
- Equipos con descansos minimos respetados.
- Calendario visible en link publico.

### Escenario 4 - Operacion de partidos

Objetivo: probar actas, eventos, tabla y sanciones.

Pasos:
1. Simular 22 jornadas completas.
2. En cada jornada:
   - Abrir actas.
   - Validar QR de jugadores.
   - Registrar goles, tarjetas, cambios.
   - Cerrar actas.
3. Verificar actualizacion de tabla.
4. Verificar aplicacion de sanciones.
5. Verificar estadisticas de jugadores.

Resultado esperado:
- Tabla correcta tras cada jornada.
- Sanciones aplicadas automaticamente.
- Goleadores actualizados.
- 0 discrepancias en calculos.

### Escenario 5 - Flujo financiero completo

Objetivo: probar el Trust Engine de principio a fin.

Pasos:
1. Cobrar inscripciones a los 24 equipos.
2. Retener fianzas a los 24 equipos.
3. Simular cuotas semanales de arbitraje y cancha.
4. Simular 5 equipos morosos.
5. Ejecutar fianzas por morosidad.
6. Simular reposiciones de fianza.
7. Simular devoluciones de fianza al cierre.

Resultado esperado:
- Cobros automaticos.
- Bloqueos por falta de pago.
- Ejecuciones de fianza automaticas.
- Reposiciones registradas.
- Devoluciones calculadas correctamente.
- Contabilidad separada (ingreso vs pasivo).

### Escenario 6 - Sanciones y disputas

Objetivo: probar disciplina y resolucion de conflictos.

Pasos:
1. Simular 30 tarjetas amarillas acumuladas.
2. Simular 5 tarjetas rojas directas.
3. Simular 3 agresiones (con ejecucion de fianza).
4. Abrir 5 disputas de distintos tipos.
5. Presentar evidencia y descargo.
6. Resolver 3 a favor, 2 en contra.
7. Verificar recalculos.

Resultado esperado:
- Sanciones aplicadas correctamente.
- Disputas resueltas con auditoria.
- Recalculo automatico de tabla y sanciones.
- Todo documentado.

### Escenario 7 - Cierre de torneo

Objetivo: probar cierre completo y premios.

Pasos:
1. Verificar que no hay partidos pendientes.
2. Verificar que no hay disputas abiertas.
3. Calcular tabla final.
4. Designar campeon y subcampeon.
5. Calcular premios individuales.
6. Entregar premios.
7. Devolver fianzas.
8. Archivar torneo.
9. Verificar historial.

Resultado esperado:
- Campeon designado correctamente.
- Premios entregados con evidencia.
- Fianzas devueltas.
- Torneo archivado y consultable.

### Escenario 8 - Modo offline

Objetivo: probar operacion sin internet.

Pasos:
1. Cargar PWA en movil simulado.
2. Desconectar internet.
3. Abrir acta.
4. Escanear QR (con cache).
5. Registrar eventos.
6. Cerrar acta.
7. Reconectar internet.
8. Verificar sincronizacion.

Resultado esperado:
- Acta funciona completamente offline.
- Datos se guardan en IndexedDB.
- Sincronizacion automatica al reconectar.
- 0 perdidas de datos.

### Escenario 9 - Notificaciones

Objetivo: probar sistema de comunicacion.

Pasos:
1. Verificar notificacion de pago vencido.
2. Verificar notificacion de sancion.
3. Verificar notificacion de partido programado.
4. Verificar notificacion de acta cerrada.
5. Verificar notificacion de disputa.
6. Verificar notificacion de fianza ejecutada.

Resultado esperado:
- Todas las notificaciones llegan.
- Multiples canales funcionan (WhatsApp, email, push).
- Bitacora registra cada envio.

### Escenario 10 - Reportes y BI

Objetivo: probar dashboards y exportaciones.

Pasos:
1. Ver dashboard del admin de liga.
2. Ver dashboard del superadmin.
3. Exportar tabla a CSV.
4. Exportar reporte financiero a PDF.
5. Verificar KPIs.

Resultado esperado:
- Dashboards muestran datos correctos.
- Exportaciones funcionan.
- KPIs actualizados en tiempo real.

### Escenario 11 - Derechos ARCO

Objetivo: probar cumplimiento legal.

Pasos:
1. Solicitar acceso a datos (ARCO).
2. Solicitar rectificacion.
3. Solicitar cancelacion (anonimizacion).
4. Solicitar oposicion.
5. Verificar registro en auditoria.

Resultado esperado:
- Cada solicitud procesada correctamente.
- Plazos respetados.
- Auditoria completa.

### Escenario 12 - Aislamiento multi-tenant

Objetivo: probar que las organizaciones no se ven entre si.

Pasos:
1. Crear segunda organizacion (Liga Cero Demo 2).
2. Verificar que un usuario de una no ve datos de la otra.
3. Intentar acceder a un recurso de la otra organizacion por ID directo.
4. Ejecutar tests automatizados de aislamiento.

Resultado esperado:
- Aislamiento total.
- 0 accesos cruzados.
- Tests al 100%.

## 5. Criterios de exito

La validacion se considera exitosa cuando:

- Los 12 escenarios se ejecutan sin errores criticos.
- 0 bugs de severidad alta sin resolver.
- <5 bugs de severidad media.
- Tiempo de respuesta P95 <500ms.
- 0 perdidas de datos.
- 0 accesos cruzados entre organizaciones.
- Contabilidad cuadra.
- Tabla cuadra.
- Sanciones correctas.
- Todos los criterios de aceptacion del MVP cumplidos.

## 6. Proceso de validacion

### Fase 1 - Setup
- Cargar datos de Liga Cero.
- Verificar configuracion.
- Documentar estado inicial.

### Fase 2 - Ejecucion por escenarios
- Ejecutar escenario 1.
- Documentar bugs encontrados.
- Corregir.
- Re-ejecutar.
- Pasar al siguiente escenario.

### Fase 3 - Regresion
- Ejecutar todos los escenarios en orden.
- Verificar que los bugs corregidos no volvieron.
- Documentar resultado final.

### Fase 4 - Aprobacion
- Revision final.
- Firma de aprobacion.
- Preparacion para pilotos reales.

## 7. Documentacion de bugs

Cada bug encontrado se documenta con:

- ID unico.
- Titulo.
- Severidad (critica, alta, media, baja).
- Pasos para reproducir.
- Resultado esperado.
- Resultado actual.
- Evidencia (capturas, videos, logs).
- Estado (abierto, en progreso, resuelto, cerrado).
- Responsable.
- Fecha.

## 8. Severidades de bugs

### Critica
- Perdida de datos.
- Acceso cruzado entre organizaciones.
- Fallo en pagos.
- Fallo en sincronizacion.
- Bloqueo total del sistema.

Debe resolverse antes de continuar.

### Alta
- Funcionalidad principal no funciona.
- Calculo incorrecto en tabla o finanzas.
- Sancion mal aplicada.
- Notificacion no enviada.

Debe resolverse antes del piloto.

### Media
- UI con problemas.
- Texto incorrecto.
- Lentitud perceptible.
- Validacion faltante.

Puede resolverse durante el piloto.

### Baja
- Cosmeticos.
- Mejoras de UX.
- Texto mejorable.

Puede posponerse.

## 9. Tiempo estimado

| Fase | Duracion |
|---|---|
| Setup Liga Cero | 1 dia |
| Escenarios 1-4 | 1 semana |
| Escenarios 5-8 | 1 semana |
| Escenarios 9-12 | 3 dias |
| Regresion | 2 dias |
| Correccion de bugs | 1-2 semanas |
| **Total** | **4-6 semanas** |

Se ejecuta en paralelo al desarrollo final (sprint 22).

## 10. Herramientas necesarias

- Entorno de staging funcional.
- Base de datos con datos de Liga Cero.
- Acceso a dashboards de monitoreo (Sentry, logs).
- Herramientas de testing (Jest, Playwright).
- Simulador de dispositivos moviles.
- Simulacion de red lenta y offline.

## 11. Responsables

### Durante desarrollo (fase 1)
- Desarrollador: ejecuta escenarios tecnicos.
- Titular: valida resultados funcionales.

### Antes del piloto (fase 2)
- Titular: ejecuta escenarios de negocio.
- Desarrollador: corrige bugs.

### Aprobacion final
- Titular aprueba.
- Desarrollador confirma.

## 12. Proximos Pasos

- [ ] Preparar datos de Liga Cero (CSV de equipos y jugadores).
- [ ] Configurar entorno de staging.
- [ ] Ejecutar escenarios en orden.
- [ ] Documentar bugs.
- [ ] Corregir y re-ejecutar.
- [ ] Aprobar MVP para pilotos.
- [ ] Preparar kickoff con los 4 pilotos.
