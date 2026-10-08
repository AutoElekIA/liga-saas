# NDAs y Proteccion de Propiedad Intelectual

## 1. Proposito

Este documento agrupa los modelos de NDA (Non-Disclosure Agreement) que se usaran antes de compartir informacion sensible del proyecto con terceros: desarrolladores, socios, consultores, inversionistas.

Su objetivo es proteger:
- La vision del producto
- El modelo de negocio
- El modelo entidad-relacion
- La arquitectura tecnica
- Los datos de clientes
- El codigo fuente

## 2. Cuando usar cada NDA

| Situacion | Documento |
|---|---|
| Contratar desarrollador | NDA de desarrollador + cesion de derechos |
| Contratar disenador | NDA de desarrollador |
| Hablar con socio potencial | NDA de socio |
| Presentar a inversionista | NDA de inversionista |
| Consultor externo | NDA de desarrollador |
| Proveedor de servicios | NDA de desarrollador |
| Demo a cliente (post-MVP) | NDA opcional (segun cliente) |

## 3. NDA de Desarrollador

### Objeto
Proteger la informacion confidencial compartida durante el desarrollo del SaaS.

### Partes
- **Revelador:** [Nombre del titular del proyecto]
- **Receptor:** [Nombre del desarrollador o empresa]

### Definicion de informacion confidencial
- Codigo fuente y documentacion tecnica
- Modelo de datos y entidad-relacion
- Arquitectura y decisiones tecnicas
- Modelo de negocio y financiero
- Estrategia comercial y de marketing
- Datos de clientes y usuarios
- Cualquier informacion marcada como confidencial

### Obligaciones del receptor
1. No divulgar la informacion a terceros.
2. Usarla unicamente para el proyecto contratado.
3. Devolver o destruir la informacion al terminar.
4. No copiar ni reproducir sin autorizacion escrita.
5. Reportar cualquier acceso no autorizado.

### Vigencia
- Durante la relacion laboral o contractual.
- 5 anos despues de terminada la relacion.

### Excepciones
No aplica a informacion que:
- Sea de dominio publico.
- Ya estuviera en poder del receptor antes de la firma.
- Sea requerida por autoridad judicial.

### Consecuencias
- Indemnizacion por danos y perjuicios.
- Acciones legales civiles y penales.
- Perdida de cualquier pago pendiente.

## 4. Cesion de Derechos de Codigo

### Clausula obligatoria
Todo codigo desarrollado para el proyecto sera propiedad exclusiva del titular.

### Contenido
"El desarrollador cede de forma total, definitiva, irrevocable y sin limitacion geografica, todos los derechos patrimoniales de propiedad intelectual sobre el codigo, documentacion, disenos y cualquier obra creada durante la relacion contractual, a favor del titular del proyecto. El desarrollador conserva unicamente derechos morales."

### Alcance
- Codigo fuente y compilado
- Documentacion tecnica y funcional
- Disenos UX/UI
- Modelo de datos
- Scripts de automatizacion
- Configuracion e infraestructura como codigo

### Compensacion
La cesion forma parte del pago acordado por los servicios. No genera compensacion adicional.

### Registro
El desarrollador se compromete a firmar cualquier documento necesario para formalizar la cesion ante autoridad competente.

## 5. Clausula de No Competencia

### Objetivo
Evitar que el desarrollador use el conocimiento adquirido para crear un producto similar.

### Alcance
- Duracion: 12 meses despues de terminar la relacion.
- Territorio: Mexico.
- Actividad: SaaS de administracion de ligas de futbol.

### Excepciones
No aplica si:
- El desarrollo es generico (no especifico al proyecto).
- El desarrollador trabaja en sector distinto.
- El titular aprueba por escrito.

### Contraprestacion
La clausula es parte del contrato. Se puede acompanar de compensacion economica segun el caso.

## 6. NDA de Socio Potencial

### Objeto
Proteger la informacion compartida durante conversaciones sobre posible sociedad.

### Partes
- Revelador: titular del proyecto
- Receptor: socio potencial

### Informacion cubierta
- Vision y modelo de negocio
- Estado del proyecto
- Proyecciones financieras
- Estrategia comercial
- Lista de clientes potenciales
- Propiedad intelectual

### Vigencia
- Durante la negociacion.
- 5 anos despues si no se concreta la sociedad.

### Restricciones
El receptor no puede:
- Usar la informacion para su beneficio.
- Contactar a los prospectos mencionados.
- Iniciar un proyecto similar.
- Compartir con terceros.

### Si la sociedad se concreta
Se firma un acuerdo de socios que sustituye este NDA.

## 7. NDA de Inversionista

### Objeto
Proteger informacion compartida durante la evaluacion de inversion.

### Particularidad
Los inversionistas suelen rechazar NDAs por su volumen de deals. Alternativa:
- Firmar un term sheet con clausula de confidencialidad.
- Compartir informacion en capas (de menor a mayor sensibilidad).

### Informacion por capas
**Capa 1 (sin NDA):**
- Vision general
- Tamano de mercado
- Modelo de ingresos

**Capa 2 (con NDA simple):**
- Metricas detalladas
- Proyecciones financieras
- Roadmap de producto

**Capa 3 (con NDA + carta de intencion):**
- Codigo fuente
- Modelo entidad-relacion
- Datos de clientes
- Contratos vigentes

## 8. Como Aplicar los NDAs

### Paso 1 - Antes de compartir
- Identificar el tipo de NDA segun la persona.
- Enviar el NDA para firma.
- Recibir el NDA firmado.
- Archivar copia en /legal/firmados/.

### Paso 2 - Durante la relacion
- Compartir informacion por capas.
- No dar acceso completo desde el dia 1.
- Usar repositorios privados con permisos limitados.
- Auditar accesos.

### Paso 3 - Al terminar
- Revocar accesos.
- Pedir confirmacion de destruccion de informacion.
- Documentar el cierre.

### Herramientas recomendadas
- Firma electronica: DocuSign, HelloSign, Zoho Sign.
- Almacenamiento: carpeta privada en la nube.
- Registro: bitacora de accesos y firmas.

## 9. Repositorios Privados y Acceso por Capas

### Regla de oro
Nadie ve todo. Cada colaborador accede solo a lo que necesita.

### Estructura de repositorios
- **liga-saas** - Codigo principal (acceso limitado)
- **liga-saas-docs** - Documentacion publica (acceso amplio)
- **liga-saas-internal** - Documentos legales y financieros (solo titular)

### Permisos en GitHub
- Titular: Owner
- Desarrollador senior: Write en repos especificos
- Desarrollador junior: Write en ramas, no en main
- Disenador: Write solo en /design
- Consultor: Read temporal

### Revision de accesos
- Mensual: revisar lista de colaboradores.
- Al terminar relacion: revocar inmediatamente.
- Auditoria: registrar quien accedio a que.

## 10. Marca y Propiedad Intelectual

### Registro de marca (IMPI)
- Clase 9: software
- Clase 35: servicios comerciales
- Clase 41: educacion y deporte
- Clase 42: servicios tecnologicos

### Derechos de autor
- Codigo: protegido automaticamente desde su creacion.
- Documentacion: protegida como obra literaria.
- Disenos: protegidos como obra artistica.
- Nombre del producto: se protege via marca.

### Acciones de proteccion
- Registrar dominio .com y .mx
- Registrar marca en IMPI
- Firmar NDAs con todos los colaboradores
- Documentar autoria de cada componente

## 11. Checklist Antes de Contratar al Primer Desarrollador

- [ ] NDA firmado
- [ ] Cesion de derechos firmada
- [ ] Clausula de no competencia aceptada
- [ ] Correo corporativo creado
- [ ] Acceso a GitHub con permisos limitados
- [ ] Acceso a herramientas solo por rol
- [ ] Acuerdo economico documentado
- [ ] Fecha de inicio y termino definida
- [ ] Forma de pago establecida
- [ ] Propiedad intelectual cedida
- [ ] Confidencialidad post-relacion
- [ ] Documentacion de accesos

## 12. Recomendaciones Legales

**Abogado especializado en tecnologia**
- Revisar cada NDA antes de firmarlo.
- Adaptar al derecho mexicano.
- Validar cumplimiento con LFPDPPP.

**Costo estimado**
- NDA base: $3,000-8,000 MXN
- Cesion de derechos: incluida en NDA
- Clausula de no competencia: revision adicional
- Asesoria general: $15,000-30,000 MXN

**Cuando contratar al abogado**
- Antes del primer desarrollador.
- Antes del primer socio.
- Antes del primer cliente pagando.
- Antes del primer inversionista.

## 13. Errores Comunes a Evitar

| Error | Consecuencia |
|---|---|
| Contratar sin NDA | Perdida de confidencialidad |
| No firmar cesion de derechos | Desarrollador es dueno del codigo |
| No limitar accesos | Fugas de informacion |
| No registrar la marca | Terceros pueden registrarla |
| Compartir todo desde el dia 1 | Riesgo de copia |
| No documentar accesos | Sin trazabilidad |
| No revisar al terminar | Accesos vigentes indefinidamente |

## 14. Proximos Pasos

- [ ] Revisar este documento con abogado especializado.
- [ ] Adaptar plantillas al derecho mexicano.
- [ ] Preparar carpeta /legal/firmados/ para archivos.
- [ ] Definir proceso de firma electronica.
- [ ] Preparar checklist de contratacion.
- [ ] Revisar antes de contratar al primer desarrollador.

