# Manual de Supervivencia - Terminal y GitHub

Manual a prueba de tontos para manejar AutoElekIA SaaS Ligas desde la terminal del Codespace y GitHub.

## PARTE 1 - CONCEPTOS BASICOS

### Que es la terminal
Es una ventana donde escribes comandos de texto. La terminal los ejecuta.
Aqui aparece: @AutoElekIA ➜ /workspaces/liga-saas (develop) $
El simbolo $ indica que esta lista para recibir un comando.

### Que es nano
Es un editor de texto dentro de la terminal. Sirve para crear y editar archivos.

### Que es Git
Es el sistema que guarda el historial de cambios del proyecto.

### Que es GitHub
Es el sitio web donde vive una copia del proyecto.

### Que es un commit
Es como guardar una partida. Registra los cambios con un mensaje.

### Que es un push
Es subir los commits locales a GitHub.

### Que es una rama
Es una linea de trabajo paralela. La principal es main. La de trabajo es develop.

## PARTE 2 - COMANDOS BASICOS DE NAVEGACION

### Ver donde estas
Comando:
pwd
Muestra la carpeta actual.

### Ver que archivos hay
Comando:
ls
Muestra los archivos de la carpeta actual.

### Ver archivos de docs
Comando:
ls docs/
Muestra el contenido de la carpeta docs.

### Ver estado de Git
Comando:
git status
Muestra que archivos cambiaron y en que rama estas.

### Ver historial de commits
Comando:
git log --oneline -5
Muestra los ultimos 5 commits.

## PARTE 3 - NANO: CREAR Y EDITAR ARCHIVOS

### Abrir un archivo nuevo o existente
Comando:
nano docs/nombre-archivo.md
Si no existe, lo crea. Si existe, lo abre para editar.

### Como pegar texto en nano
1. Copia el texto que quieres pegar (Ctrl+C en tu navegador)
2. Dentro de nano, presiona Ctrl+Shift+V (o clic derecho, Pegar)

### Como guardar en nano
1. Presiona Ctrl+O
2. Presiona Enter (confirma el nombre)
3. Presiona Ctrl+X para salir

### Como salir de nano SIN guardar
1. Presiona Ctrl+X
2. Presiona N (no guardar)

### Como borrar todo el contenido de nano
1. Presiona Ctrl+K repetidamente hasta vaciar
2. Luego pega el nuevo contenido

### Como buscar dentro de nano
1. Presiona Ctrl+W
2. Escribe lo que buscas
3. Presiona Enter

## PARTE 4 - VERIFICAR ARCHIVOS

### Contar lineas de un archivo
Comando:
wc -l docs/nombre-archivo.md
Muestra el numero de lineas. Ejemplo: "100 docs/nombre.md"

### Ver las primeras 20 lineas
Comando:
head -20 docs/nombre-archivo.md

### Ver las ultimas 20 lineas
Comando:
tail -20 docs/nombre-archivo.md

### Ver todo el contenido
Comando:
cat docs/nombre-archivo.md
Si es muy largo, presiona q para salir.

### Leer con paginacion
Comando:
cat docs/nombre-archivo.md | less
Avanza con espacio. Sale con q.

## PARTE 5 - SUBIR ARCHIVOS A GITHUB

### Flujo completo paso a paso

PASO 1 - Asegurarte de estar en develop
Comando:
git checkout develop

PASO 2 - Actualizar desde GitHub
Comando:
git pull origin develop

PASO 3 - Crear o editar el archivo con nano
Comando:
nano docs/nombre-archivo.md

PASO 4 - Verificar que quedo bien
Comando:
wc -l docs/nombre-archivo.md

PASO 5 - Agregar el archivo al staging
Comando:
git add docs/nombre-archivo.md
Para agregar varios a la vez:
git add docs/archivo1.md docs/archivo2.md
Para agregar todos los cambios en docs:
git add docs/

PASO 6 - Verificar que se agrego
Comando:
git status
Los archivos agregados aparecen en verde.

PASO 7 - Hacer commit
Comando:
git commit -m "docs: descripcion breve del cambio"
Ejemplo: git commit -m "docs: agregar manual de terminal"

PASO 8 - Subir a GitHub
Comando:
git push origin develop

PASO 9 - Verificar que subio
Comando:
git log --oneline -3

## PARTE 6 - COMANDOS DE RESCATE

### Si un archivo se corrompio
Comando:
git checkout -- docs/nombre-archivo.md
Restaura la ultima version guardada en Git.

### Si no puedes salir de un comando
Presiona Ctrl+C dos veces.

### Si estas atrapado en un paginador (menos, less)
Presiona q para salir.

### Si nano se quedo abierto y no responde
Presiona Ctrl+X y luego N.

### Si hiciste un commit por error
Comando:
git reset --soft HEAD~1
Deshace el ultimo commit pero mantiene los cambios.

### Si hiciste push por error
Avisame. No improvises.

### Si el push da error de rule violations
Tu usuario tiene bypass configurado. Si falla:
1. Ve a https://github.com/AutoElekIA/liga-saas/settings/rules/24735048
2. Desmarca "Require a pull request before merging"
3. Clic en Save changes
4. Ejecuta git push origin develop
5. Vuelve a marcar la casilla y guardar

### Si Git dice "nothing to commit"
Significa que no hay cambios pendientes. O ya subiste todo, o el archivo no cambio.

### Si Git dice "Already up to date"
Significa que ya estas sincronizado con GitHub.

## PARTE 7 - FLUJOS COMPLETOS PARA TAREAS COMUNES

### FLUJO A - Crear un documento nuevo y subirlo

1. git checkout develop
2. git pull origin develop
3. nano docs/nuevo-documento.md
4. (pegar contenido)
5. Ctrl+O, Enter, Ctrl+X
6. wc -l docs/nuevo-documento.md
7. git add docs/nuevo-documento.md
8. git commit -m "docs: agregar nuevo documento"
9. git push origin develop
10. git log --oneline -3

### FLUJO B - Editar un documento existente

1. git checkout develop
2. git pull origin develop
3. nano docs/documento-existente.md
4. (editar con Ctrl+K para borrar y pegar nuevo, o editar directamente)
5. Ctrl+O, Enter, Ctrl+X
6. git add docs/documento-existente.md
7. git commit -m "docs: actualizar documento existente"
8. git push origin develop

### FLUJO C - Subir varios documentos a la vez

1. git checkout develop
2. git pull origin develop
3. nano docs/archivo1.md (crear y guardar)
4. nano docs/archivo2.md (crear y guardar)
5. nano docs/archivo3.md (crear y guardar)
6. git add docs/
7. git status (verificar)
8. git commit -m "docs: agregar 3 documentos nuevos"
9. git push origin develop

### FLUJO D - Verificar que todo esta en GitHub

1. git log --oneline -5
2. Abre https://github.com/AutoElekIA/liga-saas/tree/develop
3. Navega a la carpeta docs
4. Verifica que tus archivos aparecen

## PARTE 8 - ESTRUCTURA DEL PROYECTO

### Carpetas principales
- docs/           Documentacion del producto y negocio
- docs/comercial/ Material de ventas
- legal/          Documentos legales
- scripts/        Scripts de automatizacion
- backend/        Codigo backend (por construir)
- frontend/       Codigo frontend (por construir)
- design/         Recursos de diseno

### Archivos clave
- README.md                   Punto de entrada
- docs/00-indice.md           Catalogo completo
- docs/contexto-proyecto.md   Contexto para chats nuevos
- docs/decisiones-tomadas.md  Decisiones ya tomadas
- docs/estado-reclutamiento.md Estado del pipeline
- docs/prompt-restauracion.md Prompts para chats nuevos
- .github/pull_request_template.md  Plantilla de PR
- .github/workflows/ci.yml    Pipeline de CI/CD

## PARTE 9 - REGLAS DEL PROYECTO

### Regla 1 - Un comando por vez
No pegues bloques de varios comandos. Ejecuta uno, mira el resultado, sigue.

### Regla 2 - Siempre verifica antes de subir
Ejecuta wc -l y head -5 antes de git add.

### Regla 3 - Nunca hagas push directo a main
Solo a develop. La rama main esta protegida con doble regla.

### Regla 4 - Mensajes de commit claros
Formato: tipo: descripcion breve
Tipos: docs, feat, fix, chore, test

### Regla 5 - Si algo falla, avisa
No improvises. Pega el error completo en el chat.

## PARTE 10 - PALABRAS CLAVE DE NANO

- Ctrl+O       Guardar
- Ctrl+X       Salir
- Ctrl+K       Cortar linea
- Ctrl+U       Pegar linea cortada
- Ctrl+W       Buscar
- Ctrl+G       Ayuda
- Ctrl+C       Cancelar operacion
- Ctrl+Shift+V Pegar desde el portapapeles

## PARTE 11 - ATAJOS DE EMERGENCIA

### Salir de cualquier cosa
Presiona Ctrl+C dos veces seguidas.

### Salir del paginador
Presiona q.

### Salir de nano sin guardar
Ctrl+X, luego N.

### Salir de nano guardando
Ctrl+O, Enter, Ctrl+X.

### Volver al prompt normal
Presiona Enter varias veces.

### Si la terminal se congela
Espera 10 segundos. Si sigue congelada:
1. Cierra la pestana del navegador
2. Abre el Codespace de nuevo
3. Todo tu trabajo esta guardado en GitHub (excepto lo que no hayas subido)

## PARTE 12 - CHECKLIST ANTES DE CERRAR EL DIA

1. git status (working tree clean)
2. git log --oneline -3 (ver ultimo commit)
3. Abrir GitHub y verificar los archivos subidos
4. Si hay algo pendiente, subirlo antes de cerrar

## PARTE 13 - CONTACTOS Y RECURSOS

### Repositorio
https://github.com/AutoElekIA/liga-saas

### Rulesets
https://github.com/AutoElekIA/liga-saas/settings/rules

### Issues
https://github.com/AutoElekIA/liga-saas/issues

### Pull requests
https://github.com/AutoElekIA/liga-saas/pulls

### Codespace
Abrir desde: https://github.com/AutoElekIA/liga-saas (boton Code, luego Codespaces)

## PARTE 14 - GLOSARIO

- Terminal: ventana de comandos de texto
- Nano: editor de texto dentro de la terminal
- Git: sistema de control de versiones
- GitHub: sitio web donde vive el codigo
- Commit: guardar cambios con mensaje
- Push: subir commits a GitHub
- Pull: bajar cambios desde GitHub
- Rama: linea de trabajo paralela
- develop: rama de trabajo actual
- main: rama de produccion
- Staging: area temporal antes del commit
- Bypass: permiso especial para saltar reglas
- Ruleset: conjunto de reglas de proteccion
- Codespace: entorno de desarrollo en la nube

## PARTE 15 - MENSAJE FINAL

Si algo no esta en este manual, pregunta.
Si algo falla, avisa con el error completo.
Si algo se rompe, hay respaldo en GitHub.
El proyecto no depende de este chat. Vive en GitHub.

