# Manual de Soporte

## 1. Proposito

Definir el proceso, canales, SLAs y escalamiento del soporte tecnico del SaaS. Objetivo: resolver el 80% de los tickets en el primer contacto.

## 2. Filosofia

- Rapido: mejor respuesta corta y util que larga y tarde.
- Empatico: el cliente esta frustrado o preocupado.
- Resolutivo: cada ticket tiene una solucion o un plan.
- Documentado: cada respuesta construye la base de conocimiento.

## 3. Canales de soporte

| Canal | Uso | SLA respuesta |
|---|---|---|
| Email | Consultas generales | 24-48 h |
| WhatsApp | Urgencias operativas | 2-4 h |
| Panel de soporte dentro del SaaS | Tickets formales | 4-24 h |
| Llamada telefonica | Solo Enterprise | 1-4 h |
| Videollamada | Onboarding y casos complejos | Agendada |

## 4. Niveles de soporte

### Nivel 1 - Soporte basico
- Quien: soporte inicial.
- Que resuelve: dudas de uso, guias, contrasenas.
- Cuando escala: si requiere acceso tecnico o desarrollo.

### Nivel 2 - Soporte tecnico
- Quien: soporte avanzado o fundador.
- Que resuelve: bugs, configuraciones complejas, integraciones.
- Cuando escala: si requiere cambio de codigo.

### Nivel 3 - Desarrollo
- Quien: desarrollador.
- Que resuelve: bugs criticos, cambios en el producto.
- Cuando escala: a superadmin si es decision estrategica.

## 5. Prioridades y SLAs

| Prioridad | Descripcion | Respuesta | Resolucion |
|---|---|---|---|
| Critica | Sistema caido o perdida de datos | 1 h | 4 h |
| Alta | Funcionalidad clave bloqueada | 4 h | 24 h |
| Media | Bug menor o duda operativa | 24 h | 72 h |
| Baja | Consulta o mejora | 48 h | 7 dias |

### Definicion de "critica"
- Plataforma inaccesible.
- Perdida de datos confirmada.
- Fallo en pagos.
- Fallo en registro de actas en plena jornada.
- Brecha de seguridad.

## 6. Flujo de un ticket

### Paso 1 - Recepcion
- Cliente reporta por cualquier canal.
- Se crea ticket en el panel (o se registra en el sistema de soporte).
- Se asigna prioridad.

### Paso 2 - Clasificacion
- Categoria: bug, consulta, solicitud, incidente.
- Prioridad: critica, alta, media, baja.
- Asignacion: nivel 1, 2 o 3.

### Paso 3 - Diagnostico
- Reproducir el problema.
- Verificar logs y auditoria.
- Confirmar si es bug o mal uso.

### Paso 4 - Resolucion
- Aplicar solucion.
- Documentar pasos.
- Notificar al cliente.

### Paso 5 - Cierre
- Confirmar con el cliente.
- Cerrar ticket.
- Documentar en base de conocimiento.

## 7. Problemas comunes y soluciones

### No puede iniciar sesion
- Verificar email y contrasena.
- Resetear contrasena.
- Verificar si la cuenta esta bloqueada.
- Confirmar que el usuario esta activo.

### No puede registrar un jugador
- Verificar que el documento no este duplicado.
- Confirmar que el equipo este aprobado.
- Verificar que la ventana de transferencia este activa.
- Revisar si el jugador esta en otro equipo activo.

### El sistema no aplica una sancion automatica
- Verificar que la regla este configurada.
- Revisar si el acta esta cerrada.
- Confirmar que el umbral se alcanzo.
- Verificar si hay disputa activa.

### No se ejecuta una fianza
- Verificar saldo de fianza.
- Revisar politica configurada.
- Confirmar que el disparador este activo.
- Verificar si hay disputa pendiente.

### No puede cobrar una cuota
- Verificar configuracion de concepto de cobro.
- Confirmar que el metodo de pago este activo.
- Verificar si hay saldo suficiente.
- Revisar si hay bloqueo por deuda previa.

### Acta no se sincroniza
- Verificar conexion a internet.
- Confirmar que la PWA este actualizada.
- Revisar cola de sincronizacion.
- Forzar sincronizacion manual.

### Error en la tabla de posiciones
- Verificar actas cerradas.
- Confirmar criterios de desempate.
- Revisar si hay disputas abiertas.
- Recalcular tabla.

### Problema con pago en pasarela
- Verificar estado en la pasarela.
- Revisar webhook recibido.
- Confirmar que el monto coincida.
- Revisar si hay duplicado.

## 8. Base de conocimiento

### Estructura
- Categoria (cuenta, equipos, pagos, actas, etc.)
- Sintoma
- Causa
- Solucion paso a paso
- Capturas de pantalla o video

### Articulos obligatorios del primer mes
- Como crear un equipo.
- Como registrar jugadores.
- Como configurar conceptos de cobro.
- Como aplicar fianza.
- Como cerrar un acta.
- Como programar un partido.
- Como consultar reportes.
- Como exportar datos.

### Mantenimiento
- Actualizar mensualmente.
- Agregar articulos nuevos tras cada ticket recurrente.
- Retirar articulos obsoletos.

## 9. Plantillas de respuesta

### Acuse de recibo
Hola [nombre]:

Recibimos tu mensaje sobre [tema]. Estamos revisando el caso y te responderemos en menos de [SLA].

Numero de ticket: [XXX]

Gracias por tu paciencia.

Saludos,
[tu nombre]

### Solicitud de informacion
Hola [nombre]:

Gracias por tu mensaje. Para resolver tu caso necesitamos la siguiente informacion:
- [dato 1]
- [dato 2]
- [dato 3]

En cuanto la recibamos, continuamos con la revision.

Saludos,
[tu nombre]

### Solucion aplicada
Hola [nombre]:

El problema con [tema] ha sido resuelto. [Breve descripcion de la solucion].

Por favor confirma que todo funciona correctamente. Si necesitas algo mas, estamos aqui.

Saludos,
[tu nombre]

### Escalamiento
Hola [nombre]:

Tu caso ha sido escalado a nuestro equipo tecnico avanzado. Te mantendremos informado sobre el avance.

Tiempo estimado de resolucion: [SLA].

Gracias por tu paciencia.

Saludos,
[tu nombre]

### Cierre
Hola [nombre]:

Damos por cerrado el ticket [XXX]. Si el problema vuelve a aparecer, puedes reabrir el ticket o crear uno nuevo.

Gracias por confiar en nosotros.

Saludos,
[tu nombre]

## 10. Escalamiento

### Cuando escalar
- El ticket excede el SLA.
- El problema afecta multiples clientes.
- Hay riesgo de perdida de datos.
- Se detecta un bug critico.
- El cliente es Enterprise.

### A quien escalar
| Nivel actual | Escalar a |
|---|---|
| Nivel 1 | Nivel 2 |
| Nivel 2 | Nivel 3 (desarrollo) |
| Nivel 3 | Superadmin |

### Como escalar
- Documentar todo lo investigado.
- Aplicar etiquetas de prioridad.
- Notificar al responsable.
- Dar seguimiento activo.

## 11. Metricas de soporte

| Metrica | Objetivo |
|---|---|
| Tiempo primera respuesta | <4 h |
| Tiempo de resolucion | <24 h |
| Resolucion en primer contacto | >80% |
| Tickets por cliente/mes | <2 |
| Satisfaccion (CSAT) | >4.5/5 |
| Tickets reabiertos | <5% |
| Cumplimiento SLA | >95% |

## 12. Base de datos de clientes

Cada cliente debe tener:
- Contacto principal.
- Contacto alterno.
- Canal preferido.
- Historial de tickets.
- Notas de cuenta.
- Configuracion especifica.

## 13. Herramientas

### Fase 1 (primeros 20 clientes)
- WhatsApp Business.
- Email.
- Google Sheets para tracking.

### Fase 2 (clientes 21-50)
- Panel de tickets dentro del SaaS.
- Notion o similar para base de conocimiento.
- Metricas basicas.

### Fase 3 (clientes 51+)
- Sistema de tickets profesional (Zendesk, Freshdesk).
- Base de conocimiento publica.
- Chat en vivo.
- SLA automaticos.

## 14. Costos de soporte

### Fase 1
- Costo: $0 (fundador hace todo).
- Tiempo: 2-4 h/dia.

### Fase 2
- Costo: $8,000-15,000 MXN/mes (1 persona part-time).
- Tiempo: 4-6 h/dia.

### Fase 3
- Costo: $15,000-30,000 MXN/mes (1 persona full-time).
- Tiempo: 8 h/dia.

## 15. Cuando cerrar el ticket

Solo cerrar cuando:
- El cliente confirma que funciona.
- El problema no reaparece tras 48 h.
- Se documenta la solucion.

Nunca cerrar:
- Sin confirmacion del cliente.
- Con problemas pendientes.
- Con cliente enojado.

## 16. Proximos Pasos

- [ ] Configurar WhatsApp Business.
- [ ] Crear correo soporte@[dominio].
- [ ] Definir plantillas de respuesta.
- [ ] Crear los primeros 10 articulos de base de conocimiento.
- [ ] Documentar proceso en herramienta interna.
- [ ] Revisar antes del primer cliente pagando.
