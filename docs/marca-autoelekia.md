# AutoElekIA - Arquitectura de Marca

## 1. Proposito

Definir la estructura de marca, naming convention y vision del ecosistema de productos AutoElekIA.

## 2. Vision del hub

AutoElekIA es un hub de productos SaaS enfocado en resolver problemas reales de operacion con tecnologia accesible.

No es una agencia. No es una consultora. Es una fabrica de productos digitales.

## 3. Estructura del ecosistema

AutoElekIA (hub de productos)
- AutoElekIA SaaS Ligas       [Activo]
- AutoElekIA SaaS MIKE        [Pausado]
- AutoElekIA PWA Enrutador    [Por definir]
- AutoElekIA Compras Hogar    [Por definir]
- [Legacy] AlemanSoftworks

## 4. Naming convention

### Marca paraguas
AutoElekIA (con IA mayuscula al final, coincide con el usuario de GitHub).

### Nombre de cada producto
Formato: AutoElekIA [Tipo] [Nombre]

Ejemplos:
- AutoElekIA SaaS Ligas
- AutoElekIA SaaS MIKE
- AutoElekIA PWA Enrutador
- AutoElekIA App Compras

### Nombres cortos para uso comercial
- Ligas (para AutoElekIA SaaS Ligas)
- MIKE (para AutoElekIA SaaS MIKE)
- Enrutador (para AutoElekIA PWA Enrutador)
- Compras (para AutoElekIA App Compras)

### Nombres largos para uso oficial
- AutoElekIA SaaS Ligas
- AutoElekIA SaaS MIKE
- AutoElekIA PWA Enrutador
- AutoElekIA Compras Hogar

## 5. Proyectos del ecosistema

### 5.1 AutoElekIA SaaS Ligas

Estado: Activo (en construccion).

Repo: https://github.com/AutoElekIA/liga-saas

Descripcion: SaaS que hace que las ligas de futbol se administren solas. Cobra automaticamente, aplica sanciones sin intervencion del admin, retiene fianzas tipo renta de auto, cierra actas digitales con QR y opera offline en cancha.

Mercado: Mexico. 300+ complejos deportivos con liga en CDMX y Edo Mex.

Stack:
- Backend: Node.js + TypeScript + NestJS
- DB: PostgreSQL con RLS
- Frontend: React + Next.js
- Mobile: PWA con Service Workers
- Auth: Supabase
- Pagos: Mercado Pago

Estado del backlog: 139 historias de usuario documentadas.

Documentacion: /docs en el repositorio.

### 5.2 AutoElekIA SaaS MIKE

Estado: Pausado.

Repo: https://github.com/AutoElekIA/mike-saas

Descripcion: SaaS de administracion de condominios para cualquier configuracion arquitectonica:
- Condominios verticales (torres)
- Condominios horizontales (casas)
- Condominios mixtos
- Supermanzanas
- Manzanas
- Torres con multiples unidades
- Zonas comerciales integradas
- Amenidades (albercas, gimnasios, salones, areas comunes)
- Colegios dentro del condominio
- Cualquier configuracion futura

Alcance funcional:
- Administracion de unidades (departamentos, casas, locales, oficinas)
- Cuotas de mantenimiento
- Reserva de amenidades
- Control de acceso
- Comunicacion con residentes
- Pagos y morosidad
- Mantenimiento y tickets
- Asambleas y votaciones
- Seguridad y visitantes
- Estacionamiento
- Servicios (agua, luz, gas, basura)
- Areas comunes
- Zonas comerciales
- Colegios y educacion

Mercado potencial: Mexico. Miles de condominios en zonas urbanas.

Stack: Por definir (probablemente similar a Ligas).

Nota: Proyecto pausado para enfocar recursos en Ligas. Se retomara despues de validar Ligas.

### 5.3 AutoElekIA PWA Enrutador

Estado: Por definir.

Repo: https://github.com/AutoElekIA/enrutador-pwa

Descripcion: Por definir.

Proposito probable: Enrutamiento, logistica o navegacion.

Decidir cuando: Se priorice y se defina su alcance.

### 5.4 AutoElekIA Compras Hogar

Estado: Por definir.

Repo: https://github.com/AutoElekIA/compras-hogar

Descripcion: Por definir.

Proposito probable: Gestion de compras del hogar, listas compartidas, presupuestos.

Decidir cuando: Se priorice y se defina su alcance.

### 5.5 AlemanSoftworks (Legacy)

Estado: Archivo historico.

Repo: https://github.com/AutoElekIA/aleman-softworks

Descripcion: Proyecto anterior. Marca con poca aceptacion. Se mantiene como archivo para referencia.

Aprendizajes aplicados en AutoElekIA:
- Marca generica es mejor que marca personal.
- Un hub con multiples productos es mas escalable que un solo producto.
- La documentacion es la base de todo.

## 6. Vision a 3 anos

### Ano 1
- Validar AutoElekIA SaaS Ligas con 20 clientes pagando.
- Documentar completamente MIKE.
- Definir Enrutador y Compras.

### Ano 2
- Escalar Ligas a 50 clientes.
- Lanzar MVP de MIKE.
- Primeras validaciones de Enrutador y Compras.

### Ano 3
- Ligas con 100+ clientes.
- MIKE con 20+ clientes.
- 1-2 productos nuevos validados.
- AutoElekIA como marca reconocida en SaaS vertical mexicano.

## 7. Sinergias entre productos

### Stack compartido
- Node.js + TypeScript + NestJS (backend)
- PostgreSQL con RLS (multi-tenant)
- React + Next.js (frontend)
- PWA offline (mobile)
- Supabase (auth)
- Mercado Pago (pagos)

### Infraestructura compartida
- Hosting unificado
- Monitoreo unificado
- CI/CD reutilizable
- Componentes UI compartidos

### Estrategia compartida
- Multi-tenant por diseno
- Trust Engine como patron
- Documentacion exhaustiva
- Pilotos antes de escalar
- Precio por suscripcion + comision

### Reutilizacion
Cada producto construido hace mas rapido el siguiente. Ligas ya tiene:
- Arquitectura multi-tenant probada
- Trust Engine (fianzas, pagos, sanciones)
- PWA offline
- Documentacion como plantilla

MIKE podra reutilizar gran parte.

## 8. Marca visual

### Paleta
- Color primario: [Por definir]
- Color secundario: [Por definir]
- Color de acento: [Por definir]

### Tipografia
- Titulos: sans-serif moderna (Inter, Manrope)
- Texto: sans-serif legible

### Logo
- Pendiente de disenar.
- Debe funcionar en blanco y negro.
- Version horizontal, vertical, icono.

## 9. Dominios y presencia digital

### Dominios a registrar
- autoelekia.com (principal)
- autoelekia.mx (Mexico)
- autoelekia.io (tech)

### Subdominios futuros
- ligas.autoelekia.com
- mike.autoelekia.com
- app.autoelekia.com (panel unificado)
- docs.autoelekia.com

### Correos corporativos futuros
- hola@autoelekia.com
- talento@autoelekia.com
- soporte@autoelekia.com

### Estado actual
- GitHub: AutoElekIA (ya existe)
- Email: alemangcf+liga@gmail.com (temporal)
- LinkedIn: [Por crear]
- Dominios: [Por registrar]

## 10. Registro de marca en IMPI

### Marca a registrar
AutoElekIA

### Clases
- Clase 9: software y programas informaticos
- Clase 35: servicios comerciales y administracion
- Clase 41: educacion, deporte y entretenimiento
- Clase 42: servicios tecnologicos y SaaS

### Costo estimado
$22,000-24,000 MXN (4 clases).

### Cuando
Antes del primer cliente pagando, idealmente.

## 11. Roadmap de marca

### Fase 1 - Fundacion (actual)
- [x] Nombre definido: AutoElekIA
- [x] GitHub organizado
- [x] Documentacion base creada
- [ ] Perfil de LinkedIn creado
- [ ] Dominios registrados
- [ ] Logo disenado

### Fase 2 - Consolidacion (3-6 meses)
- [ ] AutoElekIA SaaS Ligas operando
- [ ] Marca registrada en IMPI
- [ ] Web en autoelekia.com
- [ ] Correos corporativos

### Fase 3 - Expansion (6-18 meses)
- [ ] MIKE en desarrollo
- [ ] Pagina de empresa en LinkedIn
- [ ] Material comercial del ecosistema

### Fase 4 - Consolidacion del hub (18-36 meses)
- [ ] 2+ productos activos
- [ ] Equipo de desarrollo
- [ ] Marca reconocida

## 12. Comunicacion de marca

### Tagline del hub
"Productos SaaS para problemas reales."

### Tagline de Ligas
"El sistema que hace que las ligas se administren solas."

### Tagline de MIKE
"Administracion de condominios sin Excel, sin WhatsApp y sin caos." (por definir)

### Tono de comunicacion
- Directo.
- Profesional pero cercano.
- Sin tecnicismos innecesarios.
- Enfocado en resultados.

## 13. Proximos pasos

- [ ] Registrar autoelekia.com y .mx
- [ ] Disenar logo de AutoElekIA
- [ ] Crear perfil de LinkedIn personal
- [ ] Crear pagina de empresa en LinkedIn (cuando este el logo)
- [ ] Publicar vacante del desarrollador senior
- [ ] Iniciar registro de marca en IMPI
- [ ] Definir si MIKE se retoma en ano 1 o ano 2
