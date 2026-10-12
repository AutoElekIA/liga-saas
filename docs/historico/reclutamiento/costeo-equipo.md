# Costeo del Equipo y Expectativas

## 1. Proposito

Definir el costo total del proyecto, los roles requeridos, lo que se espera de cada uno y las metricas para medir su desempeno. Documento de planeacion financiera y contratacion.

## 2. Modelo de costeo

El proyecto se ejecutara con un modelo de **base + variable**:
- Base mensual: pago garantizado por tiempo dedicado.
- Variable: bono por sprint entregado a tiempo y con calidad.
- Bono final: pago unico al completar el MVP v1.0.

## 3. Escenario recomendado: 1 Senior + 1 Junior

### Rol 1 - Desarrollador Full-Stack Senior

**Costo mensual:**
| Concepto | Monto |
|---|---|
| Base mensual | $35,000 MXN |
| Variable por sprint (promedio 3-4 sprints/mes) | $10,000 MXN |
| Total mensual potencial | $45,000 MXN |

**Bono MVP:**
| Concepto | Monto |
|---|---|
| Bono al terminar MVP v1.0 | $40,000 MXN |

**Duracion:** 6-9 meses.

**Costo total estimado:** $300,000 - $430,000 MXN.

**Que se espera del Senior:**
- Tomar decisiones de arquitectura.
- Construir los modulos criticos (Trust Engine, multi-tenant, offline).
- Revisar los PRs del Junior.
- Documentar cada modulo.
- Estimar historias y planear sprints.
- Reportar avance semanal.
- Liderar la validacion con Liga Cero.
- Capacitar al Junior en el stack.

**Entregables concretos del Senior:**
| Epica | Responsabilidad |
|---|---|
| 1. Cimientos multi-tenant | 100% Senior |
| 2. Registro de equipos | 80% Senior, 20% Junior |
| 3. Trust Engine financiero | 100% Senior |
| 4. Torneos y programacion | 70% Senior, 30% Junior |
| 5. Operacion de partidos (offline) | 100% Senior |
| 6. Disciplina y justicia | 70% Senior, 30% Junior |
| 7. Competencia y premios | 50% Senior, 50% Junior |
| 8. Experiencia de usuario | 30% Senior, 70% Junior |
| 9. Confianza y cumplimiento | 70% Senior, 30% Junior |
| 10. Reportes y BI | 50% Senior, 50% Junior |

**Metricas de desempeno del Senior:**
- Sprints entregados a tiempo: >85%
- Cobertura de tests: >70%
- Bugs criticos en produccion: 0
- PRs revisados en <24h: 100%
- Documentacion al dia: 100%
- Demo funcional cada viernes: 100%

### Rol 2 - Desarrollador Full-Stack Junior

**Costo mensual:**
| Concepto | Monto |
|---|---|
| Base mensual | $18,000 MXN |
| Variable por sprint (promedio 3-4 sprints/mes) | $4,000 MXN |
| Total mensual potencial | $22,000 MXN |

**Bono MVP:**
| Concepto | Monto |
|---|---|
| Bono al terminar MVP v1.0 | $15,000 MXN |

**Duracion:** 6-9 meses.

**Costo total estimado:** $150,000 - $220,000 MXN.

**Que se espera del Junior:**
- Ejecutar tareas asignadas por el Senior.
- Seguir las convenciones del proyecto.
- Escribir tests para su codigo.
- Hacer PRs pequenos y frecuentes.
- Pedir ayuda cuando este bloqueado (antes de 2 horas).
- Documentar lo que construye.
- Aprender del feedback del Senior.

**Entregables concretos del Junior:**
- Componentes de UI (paneles, formularios, listados).
- Endpoints CRUD basicos.
- Tests de funcionalidad.
- Migraciones de base de datos.
- Documentacion de modulos menores.
- Correcciones de bugs de severidad media y baja.

**Metricas de desempeno del Junior:**
- Sprints entregados a tiempo: >70%
- Bugs introducidos por PR: <2
- PRs con tests: 100%
- Tiempo bloqueado antes de pedir ayuda: <2h
- Adherencia a convenciones: >90%
- Crecimiento mensual (feedback del Senior): positivo

### Costo combinado del equipo

| Rol | Costo mensual | Duracion | Costo total |
|---|---|---|---|
| Senior | $45,000 MXN | 6-9 meses | $270,000 - $405,000 |
| Junior | $22,000 MXN | 6-9 meses | $132,000 - $198,000 |
| Bonos MVP | $55,000 MXN | Una vez | $55,000 |
| **Total equipo** | **$67,000 MXN/mes** | **6-9 meses** | **$457,000 - $658,000 MXN** |

## 4. Escenario alternativo: Solo Senior

**Costo mensual:** $45,000 MXN.
**Duracion:** 6-9 meses.
**Costo total:** $310,000 - $445,000 MXN.

**Ventaja:** Menos coordinacion, mas velocidad de decision.
**Desventaja:** Una sola persona, menos manos para tareas repetitivas.
**Riesgo:** Si el Senior se enferma o abandona, el proyecto se detiene.

## 5. Escenario minimo: Solo Junior

**Costo mensual:** $22,000 MXN.
**Duracion:** 12-18 meses.
**Costo total:** $264,000 - $396,000 MXN.

**Ventaja:** El mas economico.
**Desventaja:** Alto riesgo de reescribir, requiere supervision externa.
**No recomendado** sin un Senior part-time que revise la arquitectura.

## 6. Costos adicionales al equipo

### Infraestructura (6 meses)
| Servicio | Costo mensual | Total 6 meses |
|---|---|---|
| Railway o Render | $25 USD | $150 USD |
| Supabase | $0-25 USD | $0-150 USD |
| Cloudflare R2 | $5 USD | $30 USD |
| Sentry | $0-26 USD | $0-156 USD |
| Dominio + SSL | $5 USD | $30 USD |
| **Subtotal** | | **$210-516 USD** |

### Servicios de terceros (6 meses)
| Servicio | Costo mensual | Total 6 meses |
|---|---|---|
| WhatsApp Business API | $25 USD | $150 USD |
| Resend o SendGrid | $10 USD | $60 USD |
| Google Workspace | $6 USD | $36 USD |
| **Subtotal** | | **$246 USD** |

### Legal y administrativo (una vez)
| Concepto | Costo |
|---|---|
| Abogado para contratos | $8,000 MXN |
| Revision legal | $8,000 MXN |
| Contador mensual | $2,500 MXN/mes |
| Registro de marca IMPI | $11,000 MXN |
| **Subtotal** | **$27,000 MXN + $15,000 MXN (contador 6 meses)** |

### Diseno y branding (una vez)
| Concepto | Costo |
|---|---|
| Logo profesional | $8,000 MXN |
| Kit de identidad visual | $5,000 MXN |
| **Subtotal** | **$13,000 MXN** |

## 7. Costo total del proyecto (MVP v1.0)

### Escenario recomendado: Senior + Junior

| Categoria | Costo MXN |
|---|---|
| Equipo (6-9 meses) | $457,000 - $658,000 |
| Infraestructura | $5,000 - $10,000 |
| Servicios de terceros | $5,000 - $6,000 |
| Legal y administrativo | $42,000 |
| Diseno y branding | $13,000 |
| Contingencia (10%) | $52,000 - $73,000 |
| **TOTAL** | **$574,000 - $802,000 MXN** |

### Escenario alternativo: Solo Senior

| Categoria | Costo MXN |
|---|---|
| Equipo (6-9 meses) | $310,000 - $445,000 |
| Infraestructura | $5,000 - $10,000 |
| Servicios de terceros | $5,000 - $6,000 |
| Legal y administrativo | $42,000 |
| Diseno y branding | $13,000 |
| Contingencia (10%) | $37,000 - $48,000 |
| **TOTAL** | **$412,000 - $564,000 MXN** |

## 8. Plan de financiamiento

### Opcion A - Bootstrapping con ingresos propios
- Reunir $500,000 MXN antes de arrancar.
- Financiar con ahorros o ingreso personal.
- No diluir equity.
- Mas lento pero independiente.

### Opcion B - Prestamo personal o familiar
- Pedir $500,000 MXN a tasa preferencial.
- Pagar con los ingresos del SaaS.
- Riesgo: si el SaaS falla, la deuda queda.
- No recomendado sin plan de pago claro.

### Opcion C - Inversion angel
- Levantar $500,000 - $1,000,000 MXN.
- Dar 5-15% de equity.
- Requiere pitch y traccion (aunque sea minima).
- Acelera el desarrollo.

### Opcion D - Modelo por fases
- Fase 1: MVP minimo con $250,000 MXN.
- Lanzar con 4 pilotos.
- Generar ingresos.
- Fase 2: Expandir con ingresos propios.

### Opcion E - Sociedad con el desarrollador
- Ofrecer equity + sueldo reducido.
- El dev se convierte en socio tecnico.
- Retiene mas efectivo.
- Diluye equity pero alinea intereses.

## 9. Como se paga al equipo

### Forma de pago
- Honorarios (no nomina).
- Factura mensual con CFDI.
- Retenciones de ISR e IVA segun corresponda.

### Calendario de pagos
| Momento | Pago |
|---|---|
| Dia 1 del mes | 50% de la base |
| Dia 15 del mes | 50% de la base |
| Al cerrar cada sprint | Variable del sprint |
| Al terminar MVP | Bono unico |

### Condiciones
- Pago puntual siempre.
- Variable solo si el sprint se completo.
- Si el sprint se retrasa por causa del dev, no se paga variable.
- Si el sprint se retrasa por causa del titular, se paga variable completa.

## 10. Expectativas de cada rol (detalle)

### Senior - Responsabilidades diarias
- 6-8 horas de codigo de calidad.
- 1-2 PRs revisados al dia.
- 30 min de reunion diaria si es necesario.
- Actualizacion de issues en GitHub.
- Comunicacion clara de bloqueantes.

### Senior - Responsabilidades semanales
- Demo funcional el viernes.
- Estimacion del siguiente sprint.
- Documentacion de lo construido.
- Revision de metricas de calidad.

### Senior - Responsabilidades mensuales
- Reporte de avance al titular.
- Revision de deuda tecnica.
- Propuesta de mejoras.
- Capacitacion al Junior.

### Junior - Responsabilidades diarias
- 6-8 horas de codigo.
- 1 PR pequeno al dia.
- Pedir ayuda antes de 2 horas de bloqueo.
- Actualizar issues asignados.

### Junior - Responsabilidades semanales
- Participar en la demo.
- Recibir y aplicar feedback del Senior.
- Documentar lo que construyo.

### Junior - Responsabilidades mensuales
- Auto-evaluacion de crecimiento.
- Propuesta de areas de mejora.

## 11. Que se espera del titular (tu rol)

- Definir prioridades cada sprint.
- Aprobar PRs del equipo.
- Comunicarse con los pilotos.
- Validar entregables contra criterios de aceptacion.
- Pagar puntualmente.
- Documentar decisiones.
- No microgestionar al equipo.

## 12. Metricas de exito del equipo

| Metrica | Meta |
|---|---|
| Sprints entregados a tiempo | >85% |
| Cobertura de tests | >70% |
| Bugs criticos | 0 |
| Uptime en staging | >99% |
| Documentacion al dia | 100% |
| NPS del equipo | >50 |
| Rotacion | 0 durante el MVP |

## 13. Plan de financiamiento - proximos pasos

- [ ] Definir cuanto capital necesitas reunir.
- [ ] Identificar fuentes de financiamiento.
- [ ] Calcular tiempo para reunir el capital.
- [ ] Fijar fecha tentativa de arranque.
- [ ] Preparar pitch si buscas inversion.
- [ ] Evaluar si entras solo o con socio tecnico.
- [ ] Definir si empiezas con MVP reducido.

## 14. Estimacion realista

Para arrancar con tranquilidad y sin quedarte a medio camino, necesitas tener disponibles:

**Minimo viable:** $400,000 MXN (solo Senior, 6 meses, MVP minimo).
**Recomendado:** $600,000 MXN (Senior + Junior, 6-9 meses, MVP completo).
**Holgado:** $800,000 MXN (equipo completo + contingencia + 3 meses de operacion sin ingresos).
