#!/bin/bash
REPO="AutoElekIA/liga-saas"
MILESTONE="Oleada 5 - Salida y Escala"

crear() {
  gh issue create --repo "$REPO" --title "$1" --body "$2" --label "$3" --milestone "$MILESTONE"
}

crear "OLE-01 - Estrategia con periodista vocero" "## Objetivo
Definir la estrategia para incorporar a un periodista deportivo como Media Partner del SaaS.

## Entregables
- Documento docs/periodista-vocero.md
- Perfil del periodista ideal
- Propuesta de valor mutua
- Modelo de acuerdo
- Plan de contenido
- Metricas de exito

## Duracion estimada
2 semanas." "oleada-5,epica-salida,critica"

crear "OLE-02 - Landing page publica" "## Objetivo
Crear la pagina web publica del SaaS.

## Entregables
- Diseno de landing
- Copy basado en propuesta de valor
- Formulario de contacto
- SEO basico
- Analytics
- Deploy en dominio propio

## Duracion estimada
3 semanas." "oleada-5,epica-salida,critica"

crear "OLE-03 - Contenido y SEO" "## Objetivo
Crear contenido para atraer prospectos organicamente.

## Entregables
- 10 articulos de blog iniciales
- Guias descargables (2)
- Videos tutoriales (3)
- Perfil de LinkedIn optimizado
- Perfil de YouTube
- Calendario editorial mensual

## Duracion estimada
4 semanas." "oleada-5,epica-salida,alta"

crear "OLE-04 - Registro de marca (ejecucion)" "## Objetivo
Ejecutar el registro de marca en IMPI.

## Entregables
- Nombre definitivo definido
- Busqueda fonetica en IMPI
- Solicitud presentada
- Dominios registrados (.com, .mx)
- Logo final disenado
- Marca en tramite

## Duracion estimada
6-12 meses (tramite legal)." "oleada-5,epica-salida,alta"

crear "OLE-05 - CRM y proceso comercial" "## Objetivo
Implementar el CRM y proceso de ventas.

## Entregables
- CRM configurado (HubSpot free o similar)
- Pipeline de ventas definido
- Plantillas de email
- Automatizacion de seguimiento
- Metricas de ventas configuradas
- Primeros 20 prospectos cargados

## Duracion estimada
2 semanas." "oleada-5,epica-salida,critica"

crear "OLE-06 - Pitch para socios o inversionistas" "## Objetivo
Preparar el pitch para levantar capital si se decide.

## Entregables
- Deck de inversion (15-20 slides)
- Modelo financiero actualizado
- Data room
- Term sheet template
- Lista de inversionistas objetivo
- Ensayo del pitch

## Duracion estimada
3 semanas." "oleada-5,epica-salida,media"

echo "6 issues de la Oleada 5 creados."
