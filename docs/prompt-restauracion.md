# Prompts de Restauracion

Instrucciones para retomar el proyecto en un chat nuevo (DeepSeek, Claude, ChatGPT, Gemini).

## Como funciona

1. Abre GitHub: github.com/AutoElekIA/liga-saas
2. Revisa los 3 documentos base (ver abajo)
3. Copia el prompt correspondiente
4. Pegalo como primer mensaje del chat nuevo
5. El asistente tiene todo el contexto

## Documentos base (revisar antes de empezar)

- docs/contexto-proyecto.md — Contexto general
- docs/decisiones-tomadas.md — Decisiones ya tomadas
- docs/estado-reclutamiento.md — Estado del pipeline

## Prompt 1 - Continuidad general

Soy Carlos, fundador de AutoElekIA. Estoy construyendo AutoElekIA SaaS Ligas, un SaaS multi-tenant de administracion de ligas deportivas en Mexico.

CONTEXTO:
- Repositorio: github.com/AutoElekIA/liga-saas (privado)
- Rama activa: develop
- 5 oleadas documentadas, 139 historias de usuario
- Stack: NestJS + Prisma + PostgreSQL 16 + RLS + React + Next.js + PWA + Mercado Pago

REVISA ANTES DE RESPONDER:
1. docs/contexto-proyecto.md
2. docs/decisiones-tomadas.md
3. docs/estado-reclutamiento.md

NECESITO AYUDA CON:
[tema especifico]

## Prompt 2 - Reclutamiento

Soy Carlos, fundador de AutoElekIA. Estoy en fase de seleccion del desarrollador senior para AutoElekIA SaaS Ligas.

CONTEXTO:
- Repositorio: github.com/AutoElekIA/liga-saas (privado)
- Tope de presupuesto: $2,000 USD/mes
- Horario: 10pm-8am Mexico
- Pipeline actual: 10 candidatos activos

REVISA:
1. docs/estado-reclutamiento.md
2. docs/decisiones-tomadas.md (seccion Reclutamiento)
3. docs/proceso-contratacion.md

NECESITO AYUDA CON:
[tema especifico]

## Prompt 3 - Desarrollo tecnico

Soy Carlos, fundador de AutoElekIA. Estoy construyendo AutoElekIA SaaS Ligas.

CONTEXTO:
- Repositorio: github.com/AutoElekIA/liga-saas (privado)
- 139 historias de usuario en GitHub Issues
- Stack: NestJS + Prisma + PostgreSQL 16 + RLS + React + Next.js + PWA + Mercado Pago

REVISA ANTES DE RESPONDER:
1. docs/00-indice.md
2. docs/02-mvp-scope.md
3. docs/03-modelo-entidad-relacion.md
4. docs/04-arquitectura-tecnica.md

NECESITO AYUDA CON:
[tema especifico]

## Prompt 4 - Inicio de sprint

Soy Carlos, fundador de AutoElekIA. Vamos a iniciar el sprint [numero] de AutoElekIA SaaS Ligas.

CONTEXTO:
- Repositorio: github.com/AutoElekIA/liga-saas
- Plan de 22 sprints en docs/desarrollo-mvp.md
- Sprint [numero] cubre: [historias del sprint]

REVISA:
1. docs/desarrollo-mvp.md (seccion del sprint)
2. GitHub Issues con label oleada-4
3. docs/decisiones-tomadas.md

NECESITO AYUDA CON:
Planificacion del sprint, criterios de aceptacion, revision de PRs.

## Reglas del proyecto

1. Nada se decide sin documentarse en GitHub.
2. Todo documento vive en /docs.
3. Los prompts anteriores son el punto de entrada.
4. El contexto real esta en GitHub, no en el chat.
5. Este documento se actualiza cuando cambian las reglas.

## Si el chat nuevo no tiene acceso a GitHub

Pegar en el primer mensaje:

"Soy Carlos, fundador de AutoElekIA. Necesito que me ayudes con un proyecto SaaS. Te voy a ir compartiendo el contexto en documentos. Empecemos por el contexto general."

Y adjuntar el contenido de docs/contexto-proyecto.md.
