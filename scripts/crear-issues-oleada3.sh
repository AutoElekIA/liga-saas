#!/bin/bash
REPO="AutoElekIA/liga-saas"
MILESTONE="Oleada 2 — Producto"

crear() {
  gh issue create --repo "$REPO" --title "$1" --body "$2" --label "$3" --milestone "$MILESTONE"
}

# ============ NEGOCIO ============

crear "NEG-01 — Pricing final del SaaS" \
"## Objetivo
Definir la estructura final de precios: planes, tiers, descuentos y add-ons.

## Entregables
- [ ] Planes (Básico, Pro, Enterprise)
- [ ] Precio por plan en MXN
- [ ] Descuento por pago anual
- [ ] Add-ons (módulos premium)
- [ ] Documento en /docs/pricing.md

## Estimación
M

## Prioridad
Crítica" \
"epica-negocio,oleada-3,critica"

crear "NEG-02 — Propuesta de valor por segmento" \
"## Objetivo
Definir la propuesta de valor específica por segmento.

## Entregables
- [ ] Fútbol 7 con liga propia
- [ ] Fútbol 11 VIP con liga
- [ ] Organizadores sin cancha
- [ ] Academias y colegios
- [ ] Documento en /docs/propuesta-valor.md

## Estimación
M

## Prioridad
Crítica" \
"epica-negocio,oleada-3,critica"

crear "NEG-03 — Buyer personas detallados" \
"## Objetivo
Documentar el perfil de cada cliente ideal.

## Entregables
- [ ] Dueño de complejo fútbol 7
- [ ] Dueño de 20-30 canchas fútbol 11 VIP
- [ ] Organizador sin cancha
- [ ] Academia o colegio
- [ ] Documento en /docs/buyer-personas.md

## Estimación
M

## Prioridad
Alta" \
"epica-negocio,oleada-3,alta"

crear "NEG-04 — Material comercial" \
"## Objetivo
Crear el material para vender el SaaS.

## Entregables
- [ ] Deck de presentación (10-15 slides)
- [ ] One-pager ejecutivo
- [ ] Script de demo
- [ ] Caso de éxito (Liga Cero)
- [ ] Carpeta en /docs/comercial/

## Estimación
L

## Prioridad
Alta" \
"epica-negocio,oleada-3,alta"

crear "NEG-05 — Go-to-market y canales" \
"## Objetivo
Definir la estrategia de entrada al mercado.

## Entregables
- [ ] Canales priorizados (directo, referidos, partnerships)
- [ ] Programa de referidos
- [ ] Estrategia con los 4 excompañeros como pilotos
- [ ] Estrategia de expansión a fútbol 11 VIP
- [ ] Documento en /docs/go-to-market.md

## Estimación
L

## Prioridad
Crítica" \
"epica-negocio,oleada-3,critica"

# ============ LEGAL ============

crear "LEG-01 — Figura legal y constitución" \
"## Objetivo
Definir la figura legal de la empresa.

## Entregables
- [ ] Elección: SAS, SAPI, otra
- [ ] Constitución ante notario
- [ ] RFC y registro fiscal
- [ ] Cuenta bancaria empresarial
- [ ] Documento en /legal/figura-legal.md

## Estimación
L

## Prioridad
Crítica" \
"epica-legal,oleada-3,critica"

crear "LEG-02 — Términos y condiciones del SaaS" \
"## Objetivo
Redactar los T&C del servicio.

## Entregables
- [ ] Uso del servicio
- [ ] Limitaciones de responsabilidad
- [ ] Propiedad intelectual
- [ ] Suspensión y cancelación
- [ ] Documento en /legal/terminos-condiciones.md

## Estimación
L

## Prioridad
Crítica" \
"epica-legal,oleada-3,critica"

crear "LEG-03 — Política de privacidad (LFPDPPP)" \
"## Objetivo
Cumplir con la Ley Federal de Protección de Datos.

## Entregables
- [ ] Aviso de privacidad
- [ ] Consentimientos (mayores y menores)
- [ ] Procedimiento ARCO
- [ ] Retención de datos
- [ ] Documento en /legal/politica-privacidad.md

## Estimación
L

## Prioridad
Crítica" \
"epica-legal,oleada-3,critica"

crear "LEG-04 — Contrato modelo con ligas" \
"## Objetivo
Redactar el contrato de prestación de servicios SaaS.

## Entregables
- [ ] Objeto del contrato
- [ ] Nivel de servicio (SLA)
- [ ] Precios y forma de pago
- [ ] Causas de terminación
- [ ] Documento en /legal/contrato-ligas.md

## Estimación
L

## Prioridad
Crítica" \
"epica-legal,oleada-3,critica"

crear "LEG-05 — Contrato con árbitros" \
"## Objetivo
Definir la relación legal con los árbitros.

## Entregables
- [ ] Prestación de servicios (no relación laboral)
- [ ] Forma de pago
- [ ] Responsabilidades
- [ ] Confidencialidad
- [ ] Documento en /legal/contrato-arbitros.md

## Estimación
M

## Prioridad
Alta" \
"epica-legal,oleada-3,alta"

crear "LEG-06 — NDAs para desarrolladores y socios" \
"## Objetivo
Proteger la propiedad intelectual del proyecto.

## Entregables
- [ ] NDA para desarrolladores
- [ ] NDA para socios potenciales
- [ ] Cesión de derechos de código
- [ ] Cláusula de no competencia
- [ ] Documento en /legal/nda.md

## Estimación
M

## Prioridad
Crítica" \
"epica-legal,oleada-3,critica"

crear "LEG-07 — Registro de marca en IMPI" \
"## Objetivo
Registrar la marca del SaaS.

## Entregables
- [ ] Búsqueda fonética en IMPI
- [ ] Clase(s) de registro (9, 35, 41, 42)
- [ ] Solicitud de registro
- [ ] Seguimiento hasta concesión
- [ ] Documento en /legal/marca-impi.md

## Estimación
L

## Prioridad
Alta" \
"epica-legal,oleada-3,alta"

# ============ OPERACION ============

crear "OPE-01 — Manual de onboarding de ligas" \
"## Objetivo
Documentar cómo se activa una nueva liga.

## Entregables
- [ ] Checklist paso a paso
- [ ] Videos o tutoriales
- [ ] Responsables
- [ ] Tiempos estimados
- [ ] Documento en /docs/manual-onboarding.md

## Estimación
M

## Prioridad
Crítica" \
"epica-operacion,oleada-3,critica"

crear "OPE-02 — Manual de soporte" \
"## Objetivo
Documentar cómo resolver problemas comunes.

## Entregables
- [ ] Base de conocimiento
- [ ] SLA por prioridad
- [ ] Escalamiento nivel 1, 2, 3
- [ ] Plantillas de respuesta
- [ ] Documento en /docs/manual-soporte.md

## Estimación
M

## Prioridad
Alta" \
"epica-operacion,oleada-3,alta"

crear "OPE-03 — Playbook de ventas" \
"## Objetivo
Documentar cómo vender el SaaS.

## Entregables
- [ ] Perfil de cliente ideal
- [ ] Script de cold call
- [ ] Script de demo
- [ ] Manejo de objeciones
- [ ] Proceso de cierre
- [ ] Documento en /docs/playbook-ventas.md

## Estimación
M

## Prioridad
Alta" \
"epica-operacion,oleada-3,alta"

echo "✅ 15 issues de la Oleada 3 creados."
