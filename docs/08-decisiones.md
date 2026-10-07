# Decisiones de Arquitectura (ADRs)

Registro de las decisiones importantes del proyecto. Cada una documenta qué se decidió, por qué, y qué alternativas se descartaron.

---

## ADR-001: PostgreSQL + RLS para multi-tenant

**Fecha:** Octubre 2026
**Estado:** Aceptada

**Contexto:** Necesitamos aislar datos por organización sin multiplicar bases de datos ni esquemas.

**Decisión:** Usar PostgreSQL con Row-Level Security (RLS). Cada tabla tiene `organizacion_id` y políticas que garantizan aislamiento.

**Alternativas consideradas:**
- Schema por liga: más aislado pero más caro y complejo de migrar.
- Base de datos por cliente: inviable para escalar a 100+ ligas.

**Consecuencias:**
- ✅ Una sola base de datos, un solo esquema.
- ✅ Aislamiento a nivel de motor.
- ⚠️ Requiere disciplina en cada query.
- ⚠️ Tests automatizados de aislamiento obligatorios.

---

## ADR-002: PWA antes que app nativa

**Fecha:** Octubre 2026
**Estado:** Aceptada

**Contexto:** Los árbitros y equipos necesitan acceso móvil, pero no quieren descargar apps.

**Decisión:** Empezar con PWA (Progressive Web App). Funciona offline, se instala desde el navegador, sin tiendas.

**Alternativas consideradas:**
- App nativa desde inicio: más costosa, más lenta, mayor fricción.
- App híbrida: complejidad innecesaria en MVP.

**Consecuencias:**
- ✅ Cero fricción para el usuario.
- ✅ Una sola base de código.
- ✅ Offline con Service Workers.
- ⚠️ Limitaciones en notificaciones push en iOS.
- 📌 React Native se evalúa en fase 2 si es necesario.

---

## ADR-003: Mercado Pago como pasarela principal

**Fecha:** Octubre 2026
**Estado:** Aceptada

**Contexto:** Necesitamos cobrar en México con máxima cobertura (tarjetas, SPEI, OXXO, efectivo).

**Decisión:** Mercado Pago como pasarela principal. Capa de pagos abstraída para agregar otros proveedores sin reescribir.

**Alternativas consideradas:**
- Stripe MX: excelente pero menor cobertura en efectivo.
- Conekta: buena alternativa, se integra en fase 2.

**Consecuencias:**
- ✅ Máxima cobertura en México.
- ✅ Soporte de OXXO y efectivo digital.
- ⚠️ Dependencia de un solo proveedor mitigada por abstracción.

---

## ADR-004: Supabase Auth para MVP

**Fecha:** Octubre 2026
**Estado:** Aceptada

**Contexto:** Construir autenticación desde cero retrasa el MVP sin valor diferencial.

**Decisión:** Usar Supabase Auth. Incluye base de datos, storage y auth en un solo servicio, reduciendo costos iniciales.

**Alternativas consideradas:**
- Auth0: robusto pero caro para MVP.
- Clerk: excelente UX pero costo por usuario.
- Auth propio: tiempo perdido en algo resuelto.

**Consecuencias:**
- ✅ Reduce tiempo y costo inicial.
- ✅ Escalable hasta cierto punto.
- 📌 Se evalúa migración si el volumen lo exige.

---

## ADR-005: Offline-first con Service Workers

**Fecha:** Octubre 2026
**Estado:** Aceptada

**Contexto:** Las canchas mexicanas pueden no tener señal. El árbitro no puede depender de internet.

**Decisión:** Arquitectura offline-first con Service Workers e IndexedDB. Validación local de QR con datos cacheados. Sincronización al recuperar señal.

**Alternativas consideradas:**
- Online-only: inviable en cancha.
- App nativa con SQLite: complejidad prematura.

**Consecuencias:**
- ✅ Funciona sin internet.
- ⚠️ Resolución de conflictos requiere diseño cuidadoso.
- 📌 Empezar con caché simple, no sincronización bidireccional completa.

---

## ADR-006: NestJS por modularidad

**Fecha:** Octubre 2026
**Estado:** Aceptada

**Contexto:** Necesitamos un backend escalable, testeable y fácil de mantener.

**Decisión:** NestJS con TypeScript. Módulos por dominio, inyección de dependencias, estructura clara.

**Alternativas consideradas:**
- Express puro: rápido pero sin estructura.
- FastAPI (Python): excelente, viable si el equipo domina Python.

**Consecuencias:**
- ✅ Estructura clara por módulos.
- ✅ Fácil de testear.
- ⚠️ Curva de aprendizaje para juniors.

---

## ADR-007: Auditoría desde día 1

**Fecha:** Octubre 2026
**Estado:** Aceptada

**Contexto:** La confianza del cliente depende de la trazabilidad total.

**Decisión:** Toda acción sensible se registra en tabla `Auditoria` con actor, timestamp, valores anteriores y nuevos, motivo e IP.

**Alternativas consideradas:**
- Logs sueltos: insuficiente para auditoría formal.
- Auditoría en fase 2: riesgo de perder historial clave.

**Consecuencias:**
- ✅ Trazabilidad total.
- ✅ Cumplimiento legal.
- ⚠️ Almacenamiento crece rápido (particionar por fecha).

---

## ADR-008: Stack estándar, no exótico

**Fecha:** Octubre 2026
**Estado:** Aceptada

**Contexto:** Necesitamos contratar desarrolladores fácilmente en México.

**Decisión:** Stack estándar (Node, React, PostgreSQL). Evitar tecnologías exóticas.

**Alternativas consideradas:**
- Stack moderno pero nicho: difícil contratar.
- Stack legado: difícil de escalar.

**Consecuencias:**
- ✅ Fácil contratación.
- ✅ Comunidad y recursos abundantes.
- ✅ Menor riesgo de dependencia de un solo experto.

---

## ADR-009: GitHub como fuente única de verdad

**Fecha:** Octubre 2026
**Estado:** Aceptada

**Contexto:** Proteger el proyecto y evitar dependencia de personas.

**Decisión:** Todo el proyecto (documentación, diseño, código) vive en GitHub. Repositorio privado. Rama `main` protegida. Nadie entra como Owner excepto el fundador.

**Alternativas consideradas:**
- Google Drive / Notion: no versionan código.
- GitLab / Bitbucket: válidos pero GitHub tiene mejor ecosistema.

**Consecuencias:**
- ✅ Trazabilidad total.
- ✅ Protección legal.
- ✅ Autonomía del fundador.

---

## ADR-010: Modelo de cobro mixto (suscripción + comisión)

**Fecha:** Octubre 2026
**Estado:** Aceptada

**Contexto:** Definir cómo monetizar el SaaS sin frenar la adopción.

**Decisión:** Suscripción base de $3,000 MXN/mes por liga + 2% de comisión por transacciones procesadas.

**Alternativas consideradas:**
- Solo suscripción: ingreso predecible pero limitado.
- Solo comisión: adopción fácil pero ingreso volátil.
- Por jugador: complicado en ligas con plantillas variables.

**Consecuencias:**
- ✅ Ingreso recurrente + escalable.
- ✅ Alineado con el éxito del cliente.
- ⚠️ Requiere pasarela integrada desde MVP.

---

## Convención para nuevas decisiones

Cada nueva decisión se documenta aquí con:
- Número secuencial (ADR-XXX)
- Fecha
- Estado (Propuesta, Aceptada, Rechazada, Reemplazada)
- Contexto
- Decisión
- Alternativas consideradas
- Consecuencias
