
# Arquitectura Técnica

## Principios
1. Multi-tenant por diseño (RLS).
2. Stack estándar (fácil contratación).
3. Escalable sin reescribir.
4. Offline-first en cancha.
5. API-first.
6. Auditoría total.
7. Seguridad por capas.
8. Costo controlado.

## Stack Tecnológico

### Backend
- Node.js + TypeScript
- NestJS (modular, escalable, testeable)
- REST + OpenAPI
- Zod o class-validator
- Prisma o TypeORM

### Base de Datos
- PostgreSQL 16+ con Row-Level Security (RLS)
- Redis para caché, sesiones y colas
- PostgreSQL full-text para búsqueda
- S3 o Cloudflare R2 para archivos

### Frontend Web
- React + Next.js (SSR para links públicos)
- Zustand o TanStack Query
- Tailwind + shadcn/ui
- React Hook Form + Zod
- Recharts o Tremor

### Móvil
- Fase 1: PWA (offline con Service Workers)
- Fase 2: React Native (Expo) si es necesario

### Pagos (México)
- Principal: Mercado Pago (tarjetas, SPEI, OXXO)
- Alternativas: Conekta, Stripe MX, Clip, Openpay
- Capa de pagos abstraída

### Comunicaciones
- WhatsApp: Meta Cloud API o Twilio
- Email: Resend o SendGrid
- Push web: Web Push API + Firebase
- SMS: Twilio (solo fallback)

### Infraestructura
- MVP: Railway o Render
- Escala: AWS o GCP
- CI/CD: GitHub Actions
- Monitoreo: Sentry + Logtail
- Backups: automáticos diarios a S3
- CDN: Cloudflare

### Autenticación
- MVP: Supabase Auth (incluye DB y storage)
- JWT con expiración corta + refresh tokens
- RBAC + RLS para permisos

## Arquitectura Multi-Tenant

### Estrategia: Row-Level Security (RLS)
Cada tabla tiene `organizacion_id`. PostgreSQL aplica políticas que garantizan aislamiento.

**Ventajas:**
- Una sola base de datos, un solo esquema.
- Aislamiento a nivel de motor.
- Menos costoso que schema-por-liga.
- Escalable hasta cientos de organizaciones.

**Desventajas:**
- Requiere disciplina en cada query.
- Migraciones afectan a todos los tenants.
- Un bug en la política puede exponer datos.

**Mitigación:**
- Tests automatizados de aislamiento.
- Auditoría de cada acceso.
- Revisión de políticas en cada migración.

### Jerarquía
