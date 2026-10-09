# Contexto del Proyecto para Nuevos Chats

## Que es AutoElekIA SaaS Ligas

SaaS que digitaliza la administracion de ligas deportivas en Mexico. Cobra automaticamente, aplica sanciones, retiene fianzas tipo renta de auto, cierra actas digitales con QR y opera offline en cancha.

## Estado actual

- 5 oleadas documentadas (Fundamentos, Producto, Negocio/Legal, Construccion, Salida/Escala)
- 139 historias de usuario en GitHub Issues
- Modelo entidad-relacion completo
- Arquitectura tecnica definida (NestJS + Prisma + PostgreSQL RLS + Next.js + PWA)
- Repositorio: github.com/AutoElekIA/liga-saas (privado)
- Rama activa: develop
- Rulesets activos con 1 aprobacion requerida (usar llave comodin del owner)

## Documentos clave

- docs/00-indice.md - Catalogo completo
- docs/01-vision.md - Vision del producto
- docs/02-mvp-scope.md - 37 modulos del MVP
- docs/03-modelo-entidad-relacion.md - Modelo de datos
- docs/04-arquitectura-tecnica.md - Stack y arquitectura
- docs/05-modelo-financiero.md - Proyecciones
- docs/06-roadmap.md - Las 5 oleadas
- docs/08-decisiones.md - ADRs
- docs/desarrollo-mvp.md - Plan de 22 sprints
- docs/proceso-contratacion.md - Guion de entrevista
- docs/paquete-reclutamiento.md - Versiones de vacante
- docs/costeo-equipo.md - Costos y expectativas
- docs/marca-autoelekia.md - Arquitectura de marca
- docs/estado-reclutamiento.md - Pipeline de candidatos

## Decisiones clave tomadas

1. Stack: Node.js + NestJS + Prisma + PostgreSQL 16 con RLS + React + Next.js + PWA + Supabase Auth + Mercado Pago
2. Multi-tenant con RLS y FORCE ROW LEVEL SECURITY
3. Offline acotado a 3 operaciones: acta, cobros en cancha, validacion QR
4. Fianza: una vez por torneo, con reposicion si baja del minimo
5. Jugador: identidad compartida dentro de la organizacion, no entre organizaciones
6. Modelo de pago al dev: base + variable por sprint + bono MVP
7. GitHub Pro activo con rulesets de proteccion

## Marca

- Marca paraguas: AutoElekIA
- Proyecto activo: AutoElekIA SaaS Ligas
- Otros proyectos del ecosistema: SaaS MIKE (condominios, pausado), PWA Enrutador, Compras Hogar
- Legacy: AlemanSoftworks

## Titular

- Nombre: Carlos Aleman
- Ubicacion: Mexico
- Horario: 10pm-8am (nocturno)
- Email de proyecto: alemangcf+liga@gmail.com
- GitHub: AutoElekIA
- LinkedIn: Carlos Aleman (Fundador de AutoElekIA)

## Como continuar en un chat nuevo

Pegar en el primer mensaje:

"Soy Carlos, fundador de AutoElekIA. Estoy construyendo AutoElekIA SaaS Ligas, un SaaS multi-tenant de administracion de ligas deportivas en Mexico. El proyecto esta documentado en github.com/AutoElekIA/liga-saas (privado). Puedes revisar docs/00-indice.md para contexto. Necesito ayuda con [tema especifico]."

## Nota sobre continuidad

Este documento se actualiza cada vez que hay un cambio importante. Es la fuente de contexto para cualquier chat nuevo.
