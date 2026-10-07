# Glosario del Proyecto

## Términos de Negocio

**SaaS:** Software as a Service. Modelo de negocio donde el cliente paga suscripción recurrente por usar el software en la nube.

**Multi-tenant:** Arquitectura donde múltiples clientes (ligas) comparten la misma infraestructura, pero sus datos están aislados.

**Multi-liga:** Un cliente (organización o complejo) puede operar varias ligas simultáneas.

**Multi-complejo:** Un cliente puede tener varias sedes o complejos deportivos bajo la misma organización.

**Liga Cero:** Modelo operativo simulado con datos sintéticos. Sirve para diseñar, probar y validar el SaaS sin tener una liga real. No se vende ni se muestra.

**Trust Engine:** Motor de confianza del SaaS. Conjunto de reglas, automatizaciones y auditorías que hacen que la liga se administre sola.

**Administración por excepción:** Modelo donde el admin solo interviene cuando el sistema no puede resolver algo. Todo lo demás es automático.

## Términos Deportivos

**Torneo:** Competencia organizada con equipos, categorías, calendario y reglas.

**Categoría:** División dentro de un torneo (Primera, Segunda, Sub-20, Femenil, etc.).

**Equipo:** Entidad deportiva con delegado, subdelegado, plantilla de jugadores y escudo.

**Jugador:** Persona registrada con identidad verificable, carnet digital e historial deportivo.

**Delegado:** Responsable principal de un equipo ante la liga.

**Subdelegado:** Responsable secundario. Obligatorio para evitar el "solo hay uno".

**Plantilla:** Conjunto de jugadores inscritos en un equipo para un torneo.

**Ventana de transferencia:** Periodo permitido para altas y bajas de jugadores.

**Elegibilidad:** Estado que determina si un jugador puede alinearse (documentos, pago, sanción, edad).

**Carnet digital:** Identificación con QR único que valida la identidad y elegibilidad del jugador.

**Alineación:** Lista de jugadores que participarán en un partido, validada por el sistema.

**Acta:** Documento digital que registra todo lo ocurrido en un partido.

**Walkover:** Partido que un equipo no se presenta a jugar.

**Fair play:** Puntaje que mide la conducta deportiva de un equipo.

## Términos Financieros

**Fianza tipo renta de auto:** Depósito de garantía retenido al equipo. No es ingreso. Se devuelve si cumple, se ejecuta si incumple.

**Retención:** Acto de congelar un monto en garantía. No es un cobro.

**Ejecución:** Acto de usar parte o toda la fianza por incumplimiento.

**Reposición:** Acto de recargar la fianza cuando baja del mínimo.

**Liberación:** Devolución de la fianza no ejecutada al cierre del torneo.

**Cuenta de garantía:** Cuenta contable separada donde vive la fianza. No es ingreso.

**Billetera del equipo:** Sistema de saldo interno con dos subcuentas: saldo operativo y fianza retenida.

**Saldo operativo:** Dinero disponible para pagar inscripción, arbitraje, cancha y cuotas.

**Concepto de cobro:** Cada rubro cobrable (inscripción, arbitraje, cancha, admin, carnet).

**Comisión por transacción:** Porcentaje que el SaaS retiene por procesar pagos.

**Reconciliación:** Proceso de comparar pagos con registros contables y resolver discrepancias.

**Devolución:** Reembolso total o parcial al cliente.

## Términos Técnicos

**RLS (Row-Level Security):** Política de PostgreSQL que aísla datos por organización a nivel de motor.

**PWA (Progressive Web App):** Aplicación web que funciona como app nativa, incluso offline.

**Offline-first:** Diseño que prioriza el funcionamiento sin internet.

**Service Worker:** Tecnología del navegador que permite cachear y funcionar offline.

**IndexedDB:** Base de datos local del navegador para almacenar datos offline.

**JWT:** Token firmado que autentica al usuario en cada petición.

**RBAC (Role-Based Access Control):** Control de acceso basado en roles.

**API:** Interfaz de programación para que otros sistemas consuman el SaaS.

**Webhook:** Notificación automática de un sistema a otro cuando ocurre un evento.

**CFDI:** Comprobante Fiscal Digital por Internet. Factura electrónica mexicana.

**SPEI:** Sistema de Pagos Electrónicos Interbancarios en México.

**KYC:** Know Your Customer. Verificación de identidad.

**ARCO:** Derechos de Acceso, Rectificación, Cancelación y Oposición (LFPDPPP).

## Términos del SaaS

**Superadmin:** Rol con acceso total al SaaS.

**Admin Organización:** Rol que administra una organización completa (varios complejos y ligas).

**Admin Complejo:** Rol que administra un complejo específico.

**Admin Liga:** Rol que administra una liga específica.

**Árbitro:** Rol con acceso a sus designaciones y actas.

**Prensa / Media Partner:** Rol de solo lectura ampliada para periodistas.

**Tutor:** Rol de responsabilidad sobre un jugador menor de edad.

**Onboarding:** Proceso de alta y configuración inicial de una nueva liga.

**Churn:** Tasa de cancelación de clientes.

**MRR (Monthly Recurring Revenue):** Ingreso recurrente mensual.

**ARR (Annual Recurring Revenue):** Ingreso recurrente anual.

**CAC (Customer Acquisition Cost):** Costo de adquirir un cliente.

**LTV (Lifetime Value):** Valor total que un cliente aporta durante su vida.

**Payback:** Tiempo en recuperar el CAC.
