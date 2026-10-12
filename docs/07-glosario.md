# Glosario del Proyecto

## Terminos de Negocio

**SaaS:** Software as a Service. Modelo de negocio donde el cliente paga suscripcion recurrente por usar el software en la nube.

**Multi-tenant:** Arquitectura donde multiples clientes (ligas) comparten la misma infraestructura, pero sus datos estan aislados.

**Multi-liga:** Un cliente (organizacion o complejo) puede operar varias ligas simultaneas.

**Multi-complejo:** Un cliente puede tener varias sedes o complejos deportivos bajo la misma organizacion.

**Liga Cero:** Modelo operativo simulado con datos sinteticos. Sirve para disenar, probar y validar el SaaS sin tener una liga real. No se vende ni se muestra.

**Trust Engine:** Motor de confianza del SaaS. Conjunto de reglas, automatizaciones y auditorias que hacen que la liga se administre sola.

**Administracion por excepcion:** Modelo donde el admin solo interviene cuando el sistema no puede resolver algo. Todo lo demas es automatico.

## Terminos Deportivos

**Torneo:** Competencia organizada con equipos, categorias, calendario y reglas.

**Categoria:** Division dentro de un torneo (Primera, Segunda, Sub-20, Femenil, etc.).

**Equipo:** Entidad deportiva con delegado, subdelegado, plantilla de jugadores y escudo.

**Jugador:** Persona registrada con identidad verificable, carnet digital e historial deportivo.

**Delegado:** Responsable principal de un equipo ante la liga.

**Subdelegado:** Responsable secundario. Obligatorio para evitar el "solo hay uno".

**Plantilla:** Conjunto de jugadores inscritos en un equipo para un torneo.

**Ventana de transferencia:** Periodo permitido para altas y bajas de jugadores.

**Elegibilidad:** Estado que determina si un jugador puede alinearse (documentos, pago, sancion, edad).

**Carnet digital:** Identificacion con QR unico que valida la identidad y elegibilidad del jugador.

**Alineacion:** Lista de jugadores que participaran en un partido, validada por el sistema.

**Acta:** Documento digital que registra todo lo ocurrido en un partido.

**Walkover:** Partido que un equipo no se presenta a jugar.

**Fair play:** Puntaje que mide la conducta deportiva de un equipo.

## Terminos Financieros

**Fianza tipo renta de auto:** Deposito de garantia retenido al equipo. No es ingreso. Se devuelve si cumple, se ejecuta si incumple.

**Retencion:** Acto de congelar un monto en garantia. No es un cobro.

**Ejecucion:** Acto de usar parte o toda la fianza por incumplimiento.

**Reposicion:** Acto de recargar la fianza cuando baja del minimo.

**Liberacion:** Devolucion de la fianza no ejecutada al cierre del torneo.

**Cuenta de garantia:** Cuenta contable separada donde vive la fianza. No es ingreso.

**Billetera del equipo:** Sistema de saldo interno con dos subcuentas: saldo operativo y fianza retenida.

**Saldo operativo:** Dinero disponible para pagar inscripcion, arbitraje, cancha y cuotas.

**Concepto de cobro:** Cada rubro cobrable (inscripcion, arbitraje, cancha, admin, carnet).

**Comision por transaccion:** Porcentaje que el SaaS retiene por procesar pagos.

**Reconciliacion:** Proceso de comparar pagos con registros contables y resolver discrepancias.

**Devolucion:** Reembolso total o parcial al cliente.


## Terminos Tecnicos

**RLS (Row-Level Security):** Politica de PostgreSQL que aisla datos por organizacion a nivel de motor.

**PWA (Progressive Web App):** Aplicacion web que funciona como app nativa, incluso offline.

**Offline-first:** Diseno que prioriza el funcionamiento sin internet.

**Service Worker:** Tecnologia del navegador que permite cachear y funcionar offline.

**IndexedDB:** Base de datos local del navegador para almacenar datos offline.

**JWT:** Token firmado que autentica al usuario en cada peticion.

**RBAC (Role-Based Access Control):** Control de acceso basado en roles.

**API:** Interfaz de programacion para que otros sistemas consuman el SaaS.

**Webhook:** Notificacion automatica de un sistema a otro cuando ocurre un evento.

**CFDI:** Comprobante Fiscal Digital por Internet. Factura electronica mexicana.

**SPEI:** Sistema de Pagos Electronicos Interbancarios en Mexico. No es un encargado del tratamiento; es infraestructura bancaria.

**KYC:** Know Your Customer. Verificacion de identidad.

**ARCO:** Derechos de Acceso, Rectificacion, Cancelacion y Oposicion (LFPDPPP).

## Terminos del SaaS

**Superadmin:** Rol con acceso total al SaaS.

**Admin Organizacion:** Rol que administra una organizacion completa (varios complejos y ligas).

**Admin Complejo:** Rol que administra un complejo especifico.

**Admin Liga:** Rol que administra una liga especifica.

**Arbitro:** Rol con acceso a sus designaciones y actas.

**Prensa / Media Partner:** Rol de solo lectura ampliada para periodistas.

**Tutor:** Rol de responsabilidad sobre un jugador menor de edad.

**Onboarding:** Proceso de alta y configuracion inicial de una nueva liga.

**Churn:** Tasa de cancelacion de clientes.

**MRR (Monthly Recurring Revenue):** Ingreso recurrente mensual.

**ARR (Annual Recurring Revenue):** Ingreso recurrente anual.

**CAC (Customer Acquisition Cost):** Costo de adquirir un cliente.

**LTV (Lifetime Value):** Valor total que un cliente aporta durante su vida.

**Payback:** Tiempo en recuperar el CAC.


## Terminos de Proteccion de Datos (LFPDPPP)

**LFPDPPP:** Ley Federal de Proteccion de Datos Personales en Posesion de los Particulares. Marco legal mexicano vigente (version 2025).

**Titular:** Persona fisica a quien corresponden los datos personales.

**Responsable:** Persona fisica o moral que decide sobre el tratamiento de los datos personales.

**Encargado del tratamiento:** Persona fisica o moral que trata datos personales por cuenta del responsable.

**Tratamiento:** Cualquier operacion sobre datos personales (obtencion, uso, divulgacion, almacenamiento, etc.).

**Datos personales sensibles:** Datos que afectan la esfera mas intima del titular o cuyo uso indebido puede generar discriminacion. Incluye salud, origen etnico, religion, preferencia sexual, datos geneticos y biometricos.

**Anonimizacion:** Proceso mediante el cual los datos personales dejan de poder asociarse a un titular identificable. Una vez anonimizados, salen del ambito de la LFPDPPP.

**Revocacion del consentimiento:** Derecho del titular a retirar el consentimiento otorgado para el tratamiento de sus datos. No tiene efectos retroactivos.

**Limitacion de uso o divulgacion:** Derecho del titular a limitar el uso de sus datos personales para finalidades especificas.

**Portabilidad:** Derecho del titular a recibir sus datos personales en un formato estructurado, comun y de lectura mecanica.

**Representacion legal del menor:** Facultad del tutor para ejercer los derechos del menor, incluyendo ARCO, consentimiento y revocacion.

**Finalidad primaria:** Proposito del tratamiento necesario para la prestacion del servicio. No requiere consentimiento adicional al aceptar el aviso.

**Finalidad secundaria:** Proposito del tratamiento no necesario para el servicio. Requiere consentimiento expreso y puede ser revocado.

**Remision:** Comunicacion de datos entre responsable y encargado. No se considera transferencia y no requiere consentimiento adicional.

**Transferencia internacional:** Comunicacion de datos a un receptor ubicado fuera de Mexico, distinto del responsable o encargado. Requiere consentimiento e instrumento juridico.

**Aviso de privacidad:** Documento que informa al titular sobre el tratamiento de sus datos personales. Puede ser simplificado o integral.

**Derechos ARCO:** Acceso, Rectificacion, Cancelacion y Oposicion. Derechos del titular sobre sus datos personales.

## Terminos de Pagos

**Pasarela de pago:** Entidad que procesa pagos electronicos. Puede ser un encargado del tratamiento cuando maneja datos personales del titular.

**Mercado Pago:** Pasarela principal del SaaS. Soporta tarjeta, SPEI, OXXO y efectivo digital.

**Stripe MX:** Pasarela alternativa. Soporta tarjeta y SPEI.

**Clip:** Pasarela con terminal fisica y en linea. Soporta tarjeta.

**Santander:** Banco mexicano. Soporta SPEI, transferencia y cobro con tarjeta via API.

**BBVA:** Banco mexicano. Soporta SPEI, transferencia y cobro con tarjeta via API.

**Banorte:** Banco mexicano. Soporta SPEI, transferencia y cobro con tarjeta via API.

**ConfiguracionPasarela:** Tabla que permite a cada organizacion configurar su propia cuenta de pasarela.

**PasarelaDisponible:** Catalogo global de pasarelas habilitadas por el SaaS.

**Agregador de pagos:** Entidad que facilita la aceptacion de pagos por cuenta de comercios. Puede tener obligaciones de PLD/FT ante CNBV. El SaaS NO opera como agregador (Modelo B).

**PLD/FT:** Prevencion de Lavado de Dinero y Financiamiento al Terrorismo. Obligaciones regulatorias para agregadores de pago.

**CNBV:** Comision Nacional Bancaria y de Valores. Regulador de servicios financieros en Mexico.
