# Politica de Privacidad y Aviso de Privacidad

**Ultima actualizacion:** [Fecha]
**Version:** 1.0

## 1. Identidad y domicilio del responsable

[NOMBRE COMPLETO], persona fisica con actividad empresarial, RFC [RFC], con domicilio en [DOMICILIO FISCAL COMPLETO], en adelante "EL RESPONSABLE", es responsable del tratamiento de los datos personales que recaba a traves de la plataforma SaaS de administracion de ligas de futbol, accesible en [URL].

Correo de privacidad: privacidad@[dominio]
Telefono: [telefono]

## 2. Datos personales que recabamos

### 2.1 Por categoria de titular

**Administradores y delegados:**
- Nombre completo, email, telefono, RFC, domicilio, firma electronica.

**Jugadores:**
- Nombre completo, fecha de nacimiento, documento de identidad (tipo y numero), fotografia, telefono, email, contacto de emergencia, historial deportivo.

**Tutores (representantes de menores):**
- Nombre completo, documento de identidad, telefono, email, firma de consentimiento.

**Arbitros:**
- Nombre completo, RFC, domicilio, cedula profesional, certificacion de arbitraje, telefono, email.

**Usuarios del sistema (todos los roles):**
- Email, telefono, hash de contrasena, direccion IP, datos de navegacion.

### 2.2 Datos personales sensibles

EL RESPONSABLE trata las siguientes categorias de datos personales sensibles:

- **Datos de salud:** Lesiones, tipo de lesion, minuto de ocurrencia, tratamiento aplicado, observaciones medicas registradas en actas de partido.

Estos datos requieren consentimiento expreso y por escrito del titular o de su representante legal, conforme al articulo 9 de la LFPDPPP.

**Datos que NO tratamos:**
- Datos biometricos (huella dactilar, reconocimiento facial, iris).
- Datos de origen etnico o racial.
- Datos de religion o creencias.
- Datos de preferencia sexual.
- Datos geneticos.
- Datos financieros sensibles (numeros de tarjeta completos se procesan por pasarelas certificadas PCI-DSS; EL RESPONSABLE no los almacena).

## 3. Finalidades primarias del tratamiento

Estas finalidades son necesarias para la prestacion del servicio y no requieren consentimiento adicional al aceptar este aviso:

1. Registrar y gestionar equipos, jugadores, arbitros y usuarios.
2. Verificar identidad y elegibilidad de jugadores.
3. Administrar torneos, calendarios, partidos y actas digitales.
4. Procesar cobros, fianzas, pagos y devoluciones.
5. Aplicar sanciones y ejecutar fianzas segun reglamento de liga.
6. Gestionar disputas y apelaciones.
7. Emitir comprobantes fiscales (CFDI).
8. Generar tablas de posiciones, estadisticas y premios.
9. Brindar soporte tecnico y atender incidencias.
10. Cumplir obligaciones legales, fiscales y contractuales.

## 4. Finalidades secundarias del tratamiento

Estas finalidades no son necesarias para el servicio y requieren su consentimiento expreso:

1. **Difusion deportiva publica:** Publicar tabla de posiciones, goleadores, resultados y fotografias de partido en links publicos. Puede oponerse y su informacion no aparecera en el link publico.
2. **Estadisticas historicas anonimas:** Generar datos agregados y anonimizados para reportes y BI. Una vez anonimizados, ya no son datos personales.
3. **Comunicaciones sobre mejoras del producto:** Enviar novedades, cambios, mantenimiento programado. Puede oponerse en cualquier momento.
4. **Encuestas de satisfaccion:** Solicitar retroalimentacion sobre el servicio (NPS, feedback). Opt-in.

**El titular puede oponerse a estas finalidades en cualquier momento** siguiendo el procedimiento de la seccion 8.

## 5. Datos de menores de edad y tutores

### 5.1 Regla general

Todo jugador menor de 18 anos requiere un tutor registrado que otorgue consentimiento expreso y por escrito para su registro y tratamiento de datos.

### 5.2 Representacion legal

El tutor ejerce los derechos ARCO y de revocacion en representacion del menor, y puede hacerlo directamente desde su cuenta en el sistema o por los canales de la seccion 8.

### 5.3 Datos del tutor

El tutor puede ser titular de sus propios datos personales (nombre, telefono, email, documento). Ejerce ARCO sobre esos datos de forma independiente.

### 5.4 Consentimiento del tutor

El consentimiento se recaba por escrito (digital o fisico) e incluye:
- Datos del menor que seran tratados.
- Finalidades primarias y secundarias.
- Derechos del tutor y del menor.
- Procedimiento ARCO.
- Derecho a revocar el consentimiento.

### 5.5 Revocacion

El tutor puede revocar el consentimiento. Si lo hace, el menor no podra seguir activo en la liga, salvo obligaciones legales o contractuales pendientes.

## 6. Transferencias y encargados del tratamiento

### 6.1 Encargados de infraestructura

| Encargado | Funcion | Pais |
|---|---|---|
| Supabase Inc. | Auth, base de datos, storage | EE.UU. |
| Railway Corp. | Hosting backend | EE.UU. |
| Vercel Inc. | Hosting frontend | EE.UU. |
| Cloudflare Inc. | CDN, DNS, WAF | EE.UU. |
| Sentry (Functional Software) | Monitoreo de errores | EE.UU. |
| GitHub Inc. | Repositorio de codigo | EE.UU. |

### 6.2 Encargados de comunicacion

| Encargado | Funcion | Pais |
|---|---|---|
| Resend / SendGrid | Envio de correos | EE.UU. |
| Meta Platforms (WhatsApp Cloud API) | Notificaciones WhatsApp | EE.UU. |
| Twilio Inc. | SMS fallback | EE.UU. |

### 6.3 Encargados de pago

| Pasarela | Metodos | Rol legal | Estado |
|---|---|---|---|
| Mercado Pago | Tarjeta, SPEI, OXXO, efectivo digital | Encargado | Activo |
| Stripe MX | Tarjeta, SPEI | Encargado | Activo |
| Clip | Tarjeta (terminal fisica y en linea) | Encargado | Activo |
| Santander | SPEI, transferencia, cobro con tarjeta | Encargado (via API) | Activo |
| BBVA | SPEI, transferencia, cobro con tarjeta | Encargado (via API) | Activo |
| Banorte | SPEI, transferencia, cobro con tarjeta | Encargado (via API) | Activo |

### 6.4 Metodos directos (no son encargados)

- **SPEI directo entre cuentas bancarias:** EL RESPONSABLE no intermedia el flujo. Es una transferencia bancaria estandar.
- **Efectivo en ventanilla:** EL RESPONSABLE lo registra manualmente.
- **Transferencia entre cuentas:** Igual que SPEI.

### 6.5 Clausula de encargados futuros

EL RESPONSABLE podra incorporar nuevos encargados del tratamiento, incluyendo pasarelas de pago adicionales, cuando la operacion lo requiera. En tal caso, notificara a los titulares con al menos 30 dias naturales de anticipacion mediante correo electronico y publicacion en [URL]. El titular podra oponerse a dichas transferencias, en cuyo caso podra seguir usando los metodos de pago ya habilitados.

### 6.6 Transferencias internacionales

EL RESPONSABLE realiza transferencias internacionales de datos personales a los encargados listados en las secciones 6.1, 6.2 y 6.3, ubicados en los Estados Unidos de America y en Mexico.

Estas transferencias se formalizan mediante instrumento juridico que preve al menos las mismas obligaciones a las que esta sujeto EL RESPONSABLE, conforme al articulo 36 de la LFPDPPP y su Reglamento.

**Base legal:** Consentimiento expreso del titular, otorgado al aceptar este aviso de privacidad, conforme al articulo 36 de la LFPDPPP.

### 6.7 Remisiones

Las comunicaciones de datos entre EL RESPONSABLE y sus encargados NO se consideran transferencias, sino remisiones, conforme al Reglamento de la LFPDPPP. No requieren consentimiento adicional ni informarse en el aviso de privacidad.

## 7. Conservacion y anonimizacion

| Tipo de dato | Plazo | Razon |
|---|---|---|
| Operativos (actas, partidos, sanciones) | 5 anos | Prescripcion civil, historial deportivo |
| Financieros (pagos, fianzas, CFDI) | 5 anos | Obligacion fiscal (CFF art. 30) |
| Identificacion (jugadores) | 5 anos post-baja | Historial deportivo |
| Menores de edad | 5 anos post-cierre de torneo, o hasta mayoria de edad si ocurre antes | Especial proteccion |
| Consentimientos | 5 anos post-retiro | Defensa legal |
| Datos anonimizados | Indefinido | Ya no son datos personales |

### 7.1 Anonimizacion

Al terminar los plazos de conservacion, EL RESPONSABLE aplicara tecnicas de anonimizacion para que los datos no puedan asociarse a un titular identificable. Una vez anonimizados, los datos dejan de ser personales y salen del ambito de la LFPDPPP.

### 7.2 Eliminacion

Si el titular solicita la cancelacion y no existe obligacion legal de conservar, EL RESPONSABLE eliminara los datos en un plazo de 20 dias habiles.

## 8. Derechos ARCO y otros derechos

### 8.1 Derechos ARCO

El titular tiene derecho a:

- **Acceso:** Conocer que datos personales tenemos, para que los usamos y las condiciones del tratamiento.
- **Rectificacion:** Solicitar correccion de datos inexactos o incompletos.
- **Cancelacion:** Solicitar eliminacion de datos cuando no sean necesarios para las finalidades.
- **Oposicion:** Oponerse al tratamiento para finalidades especificas.

### 8.2 Derechos adicionales

- **Revocacion del consentimiento:** Retirar el consentimiento otorgado.
- **Limitacion de uso o divulgacion:** Limitar el uso de sus datos.
- **Portabilidad:** Solicitar sus datos en formato estructurado y comun.

### 8.3 Procedimiento ARCO

**Canal:** privacidad@[dominio]
**Formato:** Solicitud escrita que incluya:
- Nombre completo del titular.
- Documento que acredite identidad.
- Descripcion clara del derecho que ejerce.
- Datos de contacto.
- Documentos que sustenten la solicitud (si aplica).

**Plazo de respuesta:** 20 dias habiles contados desde la recepcion de la solicitud completa.

**Plazo de ejecucion:** 15 dias habiles posteriores a la respuesta.

**Costo:** Gratuito.

**Representacion de menores:** El tutor registrado puede ejercer ARCO en nombre del menor desde su cuenta o por el canal de privacidad.

**Representacion de terceros:** Se requiere carta poder firmada ante dos testigos e identificacion del titular y del representante.

### 8.4 Revocacion del consentimiento

El titular puede revocar su consentimiento en cualquier momento. La revocacion no tiene efectos retroactivos. Si la revocacion impide el uso del servicio, EL RESPONSABLE lo notificara y procedera a la cancelacion.

## 9. Medidas de seguridad

EL RESPONSABLE implementa las siguientes medidas:

- Cifrado en transito (TLS 1.3) y en reposo (AES-256).
- Row-Level Security (RLS) para aislamiento multi-tenant.
- Autenticacion con JWT y refresh tokens.
- Control de acceso basado en roles (RBAC).
- Auditoria de accesos y acciones sensibles.
- Respaldos diarios cifrados.
- Monitoreo de seguridad 24/7.
- Pruebas de penetracion anuales.
- Capacitacion al personal sobre proteccion de datos.

## 10. Autoridad de proteccion de datos

La autoridad encargada de la proteccion de datos personales en Mexico es la Secretaria de Anticorrupcion y Buen Gobierno, a traves de la Unidad de Proteccion de Datos Personales y el organo desconcentrado Transparencia para el Pueblo.

El titular puede presentar quejas por el tratamiento indebido de sus datos ante dicha autoridad.

## 11. Cambios al aviso de privacidad

EL RESPONSABLE puede modificar este aviso. Los cambios se notificaran con 30 dias de anticipacion por correo electronico y publicacion en [URL]. El uso continuado del servicio implica aceptacion.

## 12. Consentimiento

Al registrarse y usar la plataforma, el titular o su representante legal acepta este aviso de privacidad en su totalidad.

Para finalidades secundarias, el consentimiento se recaba de forma separada y puede ser revocado en cualquier momento.

---

**Version:** 1.0
**Fecha de ultima actualizacion:** [Fecha]
