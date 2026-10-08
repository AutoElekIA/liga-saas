#!/bin/bash
REPO="AutoElekIA/liga-saas"
MILESTONE="Oleada 4 - Construccion"

crear() {
  gh issue create --repo "$REPO" --title "$1" --body "$2" --label "$3" --milestone "$MILESTONE"
}

crear "CON-01 - Brief tecnico para desarrollador" "## Objetivo
Documento completo para entregar al desarrollador contratado.

## Entregable
docs/brief-desarrollador.md

## Estado
Documento entregado." "oleada-4,epica-construccion,critica"

crear "CON-02 - Proceso de seleccion y contratacion" "## Objetivo
Ejecutar el proceso: publicar vacante, filtrar, entrevistar, probar, contratar.

## Entregables
- Vacante publicada en 3+ canales
- 5-10 candidatos filtrados
- 3-5 entrevistas realizadas
- 1-2 pruebas tecnicas aplicadas
- 1 desarrollador contratado
- NDA + cesion + contrato firmados

## Duracion estimada
4-6 semanas." "oleada-4,epica-construccion,critica"

crear "CON-03 - Kickoff y configuracion del entorno" "## Objetivo
Configurar todo el entorno de trabajo antes del sprint 1.

## Entregables
- Repositorio con ramas develop y main
- CI/CD con GitHub Actions
- Ambientes local, staging, produccion
- Supabase Auth configurado
- Railway o Render configurado
- Accesos a Mercado Pago test
- Canal de comunicacion diario
- Sprint 1 planificado

## Duracion estimada
1 semana." "oleada-4,epica-construccion,critica"

crear "CON-04 - Desarrollo del MVP" "## Objetivo
Construir las 10 epicas del MVP en orden estricto.

## Entregables
- Epica 1: Cimientos multi-tenant
- Epica 2: Registro de equipos y jugadores
- Epica 3: Trust Engine financiero
- Epica 4: Torneos y programacion
- Epica 5: Operacion de partidos
- Epica 6: Disciplina y justicia
- Epica 7: Competencia y premios
- Epica 8: Experiencia de usuario
- Epica 9: Confianza y cumplimiento
- Epica 10: Reportes y BI

## Duracion estimada
6-9 meses con 1 dev senior." "oleada-4,epica-construccion,critica"

crear "CON-05 - Validacion con Liga Cero" "## Objetivo
Probar el MVP contra escenarios simulados antes de pilotos reales.

## Entregables
- Liga Cero cargada con datos sinteticos
- Escenarios de prueba ejecutados
- Bugs identificados y resueltos
- Criterios de MVP terminado verificados
- Documentacion de resultados

## Duracion estimada
2-3 semanas (paralelo al desarrollo)." "oleada-4,epica-construccion,alta"

crear "CON-06 - Pilotos con los 4 excompaneros" "## Objetivo
Operar el MVP en 4 ligas reales durante 6 meses.

## Entregables
- 4 pilotos activos con acceso gratuito
- Sesiones semanales de feedback
- Iteracion del producto
- Casos de exito documentados
- Testimonios obtenidos
- Conversion a cliente pagando

## Duracion estimada
6 meses." "oleada-4,epica-construccion,alta"

echo "6 issues de la Oleada 4 creados."
