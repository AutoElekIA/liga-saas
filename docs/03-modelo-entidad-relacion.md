# Modelo Entidad-Relacion

## Principios
1. Multi-tenant por diseno (todo dato pertenece a una organizacion).
2. Jugador es global, inscripcion es por torneo.
3. Fianza y saldo operativo separados.
4. Todo movimiento es auditable. Nada se borra.
5. Estados explicitos en cada entidad.
6. Configuracion por liga. Nada hardcodeado.

## Nucleo Multi-Tenant

### Organizacion
- id, nombre, rfc, plan_saas, estado, created_at

### Complejo
- id, organizacion_id, nombre, direccion, ciudad, estado, activo

### Liga
- id, organizacion_id, complejo_id, nombre, deporte (futbol7/futbol11/futbol5), reglamento_id, estado, created_at

## Personas y Roles

### Usuario
- id, email (unico), telefono, password_hash, estado, created_at

### Rol
- id, nombre (superadmin, admin_org, admin_liga, admin_complejo, delegado, subdelegado, jugador, arbitro, prensa, tutor), permisos[]

### UsuarioRol
- usuario_id, rol_id, liga_id (nullable), complejo_id (nullable), vigencia

### Jugador
- id (global por organizacion), usuario_id, nombre_completo, documento_tipo, documento_numero (unico por organizacion), fecha_nacimiento, foto_url, telefono, email, contacto_emergencia, tutor_id (nullable), estado (borrador/pendiente/habilitado/inhabilitado/sancionado), created_at

### Tutor
- id
- usuario_id (nullable)              # si el tutor se registra como usuario
- nombre
- documento
- telefono
- email
- consentimiento_firmado
- vigencia_consentimiento
- created_at

## Equipos e Inscripciones

### Equipo
- id, organizacion_id, nombre, nombre_corto, escudo_url, color_primario, color_secundario, delegado_id, subdelegado_id, estado (borrador/pendiente/aprobado/activo/suspendido/retirado), created_at

### InscripcionEquipo
- id, equipo_id, torneo_id, categoria_id, estado (pendiente/activa/suspendida/retirada), fecha_inscripcion, created_at

### JugadorEquipo
- id, jugador_id, equipo_id, torneo_id, dorsal (nullable), posicion (nullable), estado (activo/transferido/baja), fecha_alta, fecha_baja, ventana_transferencia_id (nullable)

### Carnet
- id, jugador_id, liga_id, qr_hash (unico), foto_url, estado (activo/revocado), vigencia_inicio, vigencia_fin, created_at

## Torneos y Categorias

### Torneo
- id, liga_id, nombre, temporada, formato (liga/grupos+eliminacion/ida_vuelta), fecha_apertura_inscripcion, fecha_cierre_inscripcion, fecha_inicio, fecha_fin, estado (borrador/inscripcion/en_curso/pausado/cerrado/cancelado), campeon_equipo_id (nullable), created_at

### Categoria
- id, torneo_id, nombre, edad_min, edad_max, max_equipos, max_jugadores_por_equipo, estado

### VentanaTransferencia
- id, torneo_id, fecha_inicio, fecha_fin, permite_altas, permite_bajas, activa

## Reglas y Configuracion

### ReglaLiga
- id, liga_id, tipo (puntos/desempate/sancion/elegibilidad/cobro), clave, valor (json), version, vigencia_inicio, vigencia_fin (nullable), created_by

### PlantillaTorneo
- id, organizacion_id, nombre, configuracion (json), created_at

## Conceptos de Cobro y Billetera

### ConceptoCobro
- id, liga_id, tipo (inscripcion/arbitraje/cancha/admin/fianza/carnet), nombre, monto, moneda, frecuencia (unica/por_partido/mensual/por_torneo), obligatorio, dispara_ejecucion_fianza (bool), destino (liga/arbitro/complejo), activo, created_at

### BilleteraEquipo
- id, equipo_id, liga_id, saldo_operativo, saldo_minimo_operativo, estado, updated_at

### MovimientoBilletera
- id, billetera_id, tipo (recarga/cargo/ajuste/devolucion), concepto_cobro_id (nullable), monto, saldo_resultante, referencia_pago, estado (pendiente/aplicado/revertido), actor_id, motivo, created_at

## Fianzas

### Fianza
- id, equipo_id, torneo_id, nivel (basica/estandar/premium/federada), monto_retenido, saldo_disponible, saldo_minimo, estado (pendiente/retenida/parcial/ejecutada/liberada/repuesta), cuenta_garantia_id, fecha_retencion, fecha_liberacion (nullable), updated_at

### MovimientoFianza
- id, fianza_id, tipo (retencion/deduccion/reposicion/liberacion/ajuste), monto, motivo, evidencia_url, disparador (cuota_vencida/roja_directa/agresion/dano/walkover/abandono), actor_id, estado (aplicado/en_disputa/revertido), created_at

### PoliticaFianza
- id, liga_id, nivel, monto, disparadores (json), porcentajes (json), plazo_reposicion_horas, activo

### DisputaFianza
- id, movimiento_fianza_id, abierta_por, evidencia_url, descripcion, estado (abierta/en_revision/resuelta/rechazada), resolucion, resuelto_por, resuelto_at, created_at

## Pagos y Transacciones

### PasarelaDisponible
- id
- clave                 # mercadopago | stripe | clip | santander | bbva | banorte
- nombre_comercial
- pais                   # MX
- metodos_soportados     # json
- activa_globalmente     # bool

### ConfiguracionPasarela
- id
- organizacion_id
- pasarela              # mercadopago | stripe | clip | santander | bbva | banorte
- credenciales          # cifradas
- activa                # bool
- comision_pasarela     # % que cobra la pasarela
- comision_saas         # % que cobramos nosotros
- created_at, updated_at

### Pago
- id
- usuario_id
- equipo_id
- concepto_cobro_id
- monto
- moneda
- metodo                # tarjeta | spei | oxxo | efectivo_digital | transferencia
- pasarela              # mercadopago | stripe | clip | santander | bbva | banorte | otro
- pasarela_config_id    # nullable, si hay multiples cuentas por liga
- referencia_externa
- pais_procesamiento    # MX | US | AR
- estado                # pendiente | aprobado | rechazado | reembolsado
- fecha
- created_at

### Reconciliacion
- id, pago_id, estado (conciliado/discrepancia/pendiente), notas, resuelto_por, created_at

### Devolucion
- id, pago_id, monto, motivo, estado, aprobado_por, created_at

## Calendario, Slots y Partidos

### Cancha
- id, complejo_id, nombre, tipo, capacidad, superficie, iluminacion, estado (activa/mantenimiento/inactiva), created_at

### Slot
- id, cancha_id, dia_semana, hora_inicio, hora_fin, precio_base, estado (disponible/reservado/bloqueado/mantenimiento), created_at

### CompraSlot
- id, slot_id, equipo_id, torneo_id, fecha, monto, estado (pendiente/pagado/cancelado/usado/no_usado), movimiento_billetera_id, created_at

### Partido
- id, torneo_id, categoria_id, cancha_id, slot_id (nullable), equipo_local_id, equipo_visitante_id, fecha, hora, arbitro_principal_id, arbitro_asistente_id (nullable), estado (programado/en_curso/finalizado/suspendido/cancelado/walkover), marcador_local, marcador_visitante, updated_at

## Actas y Eventos

### Acta
- id, partido_id, arbitro_id, estado (borrador/cerrada/en_disputa/confirmada/anulada), observaciones, firma_arbitro, firma_local, firma_visitante, cerrada_at, confirmada_at (nullable), created_at

### Alineacion
- id, acta_id, equipo_id, jugador_id, titular (bool), dorsal, valido (bool), motivo_invalidacion (nullable), created_at

### EventoPartido
- id, acta_id, tipo (gol/autogol/amarilla/roja/roja_doble_amarilla/cambio/lesion/penalty/incidente/agresion), minuto, jugador_id (nullable), equipo_id, descripcion, created_at

### IncidenciaPartido
- id, acta_id, tipo (retraso/falta_equipo/dano_instalacion/conducta/invasion/agresion_arbitro/abandono), equipo_id (nullable), descripcion, evidencia_url, genera_sancion (bool), genera_ejecucion_fianza (bool), created_at

## Sanciones y Disputas

### Sancion
- id, jugador_id, equipo_id, acta_id (nullable), tipo (deportiva/disciplinaria/economica/administrativa/grave), motivo, partidos_suspension (nullable), monto_ejecutado (nullable), vigencia_inicio, vigencia_fin, estado (activa/cumplida/apelada/revertida), created_at

### Disputa
- id, entidad (acta/sancion/fianza/elegibilidad/programacion/premio), entidad_id, abierta_por, equipo_id (nullable), evidencia_url, descripcion, estado (abierta/en_revision/resuelta/rechazada), nivel (1/2/3), resolucion, resuelto_por, resuelto_at, created_at

### ApelacionDisputa
- id, disputa_id, motivo, evidencia_url, estado, resuelto_por, created_at

## Tabla, Estadisticas y Premios

### TablaPosicion
- id, torneo_id, categoria_id, equipo_id, partidos_jugados, ganados, empatados, perdidos, goles_favor, goles_contra, diferencia, puntos, fair_play, updated_at

### EstadisticaJugador
- id, torneo_id, jugador_id, equipo_id, partidos_jugados, goles, asistencias, amarillas, rojas, minutos_jugados, updated_at

### Premio
- id, torneo_id, categoria_id, tipo (campeon/subcampeon/goleador/mvp/portero/fair_play/otro), ganador_equipo_id (nullable), ganador_jugador_id (nullable), monto, descripcion, estado (calculado/entregado/retenido), evidencia_entrega_url, entregado_at, created_at

### FondoPremios
- id, torneo_id, fuente (inscripciones/patrocinio/fianza_ejecutada/otro), monto, estado, created_at

## Comunicacion y Notificaciones

### Notificacion
- id, destinatario_id, tipo, canal (push/email/whatsapp/sms), payload (json), estado (pendiente/enviada/leida/fallida), enviada_at, leida_at, created_at

### BitacoraComunicacion
- id, liga_id, entidad, entidad_id, canal, mensaje, estado, created_at

### PlantillaNotificacion
- id, liga_id, tipo, canal, asunto, cuerpo, variables (json), activo

## Soporte dentro del SaaS

### Ticket
- id, usuario_id, liga_id, categoria (bug/consulta/solicitud/incidente), prioridad (baja/media/alta/critica), asunto, descripcion, adjuntos (json), estado (abierto/en_proceso/resuelto/cerrado), asignado_a, sla_vencimiento, created_at

### MensajeTicket
- id, ticket_id, autor_id, mensaje, adjuntos (json), created_at

## Auditoria y Cumplimiento

### Auditoria
- id, entidad, entidad_id, accion (crear/editar/eliminar/aprobar/rechazar/ejecutar), actor_id, actor_rol, valores_anteriores (json), valores_nuevos (json), motivo, ip, user_agent, created_at

### Consentimiento
- id
- jugador_id (nullable)      # si el titular es el jugador
- tutor_id (nullable)        # si el titular es el tutor
- tipo                       # datos_personales | imagen | menor_edad | datos_salud
- version_documento
- aceptado (bool)
- fecha, ip, created_at

### SolicitudARCO
- id
- solicitante_usuario_id (nullable)      # si es usuario directo
- solicitante_tutor_id (nullable)        # si es tutor
- titular_afectado_id                    # usuario, jugador o tutor
- titular_afectado_tipo                  # usuario | jugador | tutor
- en_representacion_de                  # nullable, jugador_id si aplica
- tipo                                   # acceso | rectificacion | cancelacion | oposicion | revocacion | portabilidad | anonimizacion
- alcance                                # todos_los_datos | finalidad_especifica
- finalidad_afectada                     # nullable, si es oposicion
- estado                                 # recibida | en_proceso | resuelta | rechazada
- respuesta
- resuelto_por
- created_at, resuelto_at

## Historial y Archivo

### Temporada
- id, liga_id, nombre (ej. 2026-A), fecha_inicio, fecha_fin, estado (activa/cerrada/archivada), created_at

### ArchivoTorneo
- id, torneo_id, snapshot (json), fecha_archivo, created_at

## Panel de Prensa

### AccesoPrensa
- id, usuario_id, liga_id, tipo (lectura/exportacion/publicacion), vigencia_inicio, vigencia_fin, activo, created_at

### PublicacionPrensa
- id, liga_id, autor_id, titulo, cuerpo, imagen_url, estado (borrador/publicada), publicada_at, created_at

## Reglas de Integridad Criticas
1. Un jugador no puede estar en dos equipos activos del mismo torneo.
2. Un dorsal no puede repetirse en el mismo equipo.
3. Un slot no puede tener dos partidos en la misma fecha y hora.
4. Un equipo sin fianza retenida no puede alinearse.
5. Un equipo con saldo operativo insuficiente no puede jugar.
6. Un jugador sancionado no puede alinearse.
7. Un jugador sin carnet activo no puede alinearse.
8. Ningun movimiento de dinero queda sin auditoria.
9. Ninguna acta cerrada se modifica sin disputa formal.
10. Nada se borra: todo se archiva.
11. Toda solicitud ARCO de un menor debe ser presentada por el tutor registrado o por autoridad competente. El sistema valida la representacion antes de procesarla.

## Indices Criticos
- Jugador.documento_numero (unico por organizacion)
- Carnet.qr_hash (unico global)
- Pago.referencia_externa (unico por pasarela)
- Partido.fecha + cancha_id
- Slot.cancha_id + dia_semana + hora_inicio
- Auditoria.entidad + entidad_id
- Notificacion.destinatario_id + estado
- SolicitudARCO.titular_afectado_id + tipo + estado
- ConfiguracionPasarela.organizacion_id + pasarela (unico por organizacion)
