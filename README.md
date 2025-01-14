# README

La primer linea de un readme siempre es # Readme por convencion. 

En el archivo readme, se escribe utilizando markdown, que no habilita a usar texto, formulas, tablas, etc. Por eso termina en md.

El # significa titulo. El ## Subtiluto. Y asi en adelante.

## RECETA para Preparar Codespace

1. Ir a Extenciones, e instalar python y jupyter

2. Creamos nuestro entorno virtual llamado "venv" y lo activamos. 
   Aegurandonos que quedo activado al ver que en la terminal la linea de comandos comienza con "(.venv)"
```bash
        python -m venv .venv
        source .venv/bin/activate
```

3. Crear el archivo gitignore con agregando estas dos lineas en el archivo
```bash
        echo -e ".venv\n.env" > gitignore
```
     
4. Hacemos commit en la rama main, solo del archivo gitignore        
```bash       
        git add gitignore
        git commit -m "Add gitignore"
        git push
```

5. Instalamos los paquetes que necesitaremos de python
```bash
        python -m pip install ipykernel nbformat pandas seaborn scikit-learn plotly
```


7. Crear Carpetas de Trabajo
```bash
        mkdir notebooks src app docs
        mkdir -p data/{raw,baking,final}
```

8. Editar un archivo
```bash
        touch mitexto.txt
        manomitexto.txt
```

9. Agregamos todas las carpetas git add

```bash
        git add app data docs notebooks src      
```     


IMPORTANTE:
## CUANDO FINALIZO CADA CLASE DEBO HACER LO SIGUIENTE EN LA TERMINAL PARA SUBIR TODOS LOS CAMBIOS:
1. git add . 
        me sube todo lo que encuentra con cambios que no este subido. Siempre es mas saludable subir lo que sabemos que tiene cambios, ya que sin querer podemos subir algo que no nos interesaba subir.
2. git commit -m "Texto indicando modificaciones"
3. git push
4. Si la terminal me devuelve un comentario como este, es porque el branch no fue subido aun:

        "fatal: The current branch 03_probability_clase08 has no upstream branch.
        To push the current branch and set the remote as upstream, use

        git push --set-upstream origin 03_probability_clase08

        To have this happen automatically for branches without a tracking upstream, see 'push.autoSetupRemote' in 'git help config'.

        debo copiar la linea que sugiere en la terminal. En este ejemplo: (git push --set-upstream origin 03_probability_clase08) 

5. git status 
        Esto debe decir algo como "Your branch is up to date with 'origin/02_Github'. nothing to commit, working tree clean" indicando que todo esta subido.



x. con "ls" que viene a significar lista, listo todos los archivos y carpetas que hay en mi directorio. Las carpetas las pinta de verde.
x. con "ls -a" (a de all) tambien habilito a listar los archivos ocultos.
x. con "pwd" imprimo el directorio de trabajo actual, o sea, donde estoy parado. pwd = print working directory
x. con "cat" vemos el arvhivo readme en la terminal.
x. con "clear" borra lineas del terminal
x. con "touch name" para crear un archivo.
x. con "echo texto" imprimo texto en la terminal
x. con "echo ... > ..." agrega el texto de la izquierda en el archivod de la derecha
x. añadir mas texto: "echo ... >> ..." agrega el texto de la izquierda al file de la derecha. 
x. para agregar texto con salto de linea"echo -e "Linea1\nLinea2"
x. es util usar echo para generar el archivo gitignore echo -e ".venv\n.env" > gitignore
x. git branch para saber la rama donde estoy parado.
x. git checkout nos sirve para movernos de rama en rama. Con el -b creo esa rama y me muevo para alli
x. rm -rf nombre de la carpeta borra la carpeta
x. mkdir -p (make directory) p = parents  para crear carpeta y subdirectorios data/{raw,baking,final}
x. git status para ver que esta sin commit


"```" backtick se llama este simbolo que sirve para poner un bloque de codigo. 
le ponemos bash para indicar que el codigo que estamos escribiendo es bash.


VAMOS A AUTOMATIZAR UN PROCESO SIMPLE, USANDO BASH (AL TRABAJAR CON LA MAQUINA VIRTUAL DE GITHUB QUE USA EL SISTEMA OPERATIVO DE LINUX), O SHELL SI ESTUVIERAMOS TRABAJANDO EN WINDOWS.

En la terminal pongo:
touch myscript.sh

Dentro del documento en La primera linea es necesaria para indicar como ejecutar el codigo:
        #!/usr/bin/env bash
En la segunda linea escribo:
        echo "mi primer script"

Luego corremos este Script, y hay varias fromas de hacerlo, por ejemplo, en la terminal escribo sh myscript.sh

Ahora vamos a hacer una EDICION DEL SCRIPT: Tomaremos una variable de comando y la imprimiremos con el comando echo.
VAMOS A COPIAR Y PEGAR EL PATH DEL WORKING DIRECTORY, y lo vamos a imprimir.
Voy a la tercer linea y escribo: 
        myworkingdirectory=$(pwd) 
        #Aca estamos creando una variable, y para llamar a un comando en bash se utiliza el simbolo $ y el comando dentro de  Parentesis curbos $(). Las asignaciones en bash se hacen sin espacios en blanco, por esto no ponemos espacios delante y despues del = en bash. pwd = print working directory

En la 4ta linea voy a imprimirlo, llamando a la variable con echo $(variable) 
        echo $(myworkingdirectory) 
Ctrl+S para guardar
corro el codigo


python -m pip freeze > requirements.txt




# STATUS 4GEEKS_CLASS_Ok = Clases Repasadas, Corregidas, y Con Notas.

En la rama main esta instalado python y jupyter, 
Esta creado y activado el entorno virtual venv,
Esta gitignore creado
Estan las siguientes librerias instaladas: ipykernel nbformat pandas seaborn scikit-learn
Tienen estas carpetas creadas: notebooks src app docs
Tiene estos archivos creados raw,baking,final

Ene/6/2025:
Esta pendiente:
Un notebook para clase 6
un notebook para clase 7
etc.



# Si quiero integrar todos los cambios a main:
1. git checkout main  
        (para ir a la rama principal)
        Este comando cambia a la rama main. Si ya estás en main, no pasará nada.
        Git verificará si hay cambios no guardados antes de permitir el cambio. Si hay, te pedirá que los guardes o los descartes.
        Resultado: Ahora estás trabajando en la rama main.

2. git config --get branch.main.remote
git config --get branch.main.merge
 
        (para ver cambios pendientes) (git pull = git fetch + git merge.)
        Combina dos comandos en uno:
        Primero ejecuta git fetch para descargar los últimos cambios del remoto en origin/main.
        Luego ejecuta git merge para aplicar esos cambios a tu rama local main.
        Si no hay conflictos, la rama main local se actualizará con los últimos cambios del remoto.
        Resultado: main está sincronizada con origin/main.

3. git fetch 
        (Para sincronizar ramas remotas en tu repositorio local)(Si acabas de ejecutar git pull, no es necesario ejecutar git fetch inmediatamente después, ya que git pull ya incluye fetch. Sin embargo, no causa daño si lo haces; simplemente confirma que tienes las referencias remotas actualizadas. 😊)
        Este comando descarga información del repositorio remoto sin fusionarla con tu rama actual.
        Si acabas de hacer git pull, es probable que git fetch no descargue nada nuevo (a menos que hayan ocurrido cambios remotos en ese breve lapso).
        Resultado: Actualiza las referencias remotas, pero no modifica tu rama local.

4. git branch
        Este comando muestra todas las ramas locales en tu repositorio.
        Si usas git branch -r, también verás las ramas remotas.
        Después de los pasos anteriores, la rama main local estará sincronizada con origin/main, y git branch mostrará todas las ramas locales existentes.
        Este comando muestra todas las ramas locales en tu repositorio.
        Si usas git branch -r, también verás las ramas remotas.
        Después de los pasos anteriores, la rama main local estará sincronizada con origin/main, y git branch mostrará todas las ramas locales existentes.
      
5. Resultado final:
        main local y origin/main estarán sincronizados.
        Las referencias remotas estarán actualizadas. 
        Verás todas las ramas locales disponibles.

# AL INICIAR CADA CLASE
1. ACTIVAMOS EL ENTORNO VIRTUAL
2. HACEMOS UN GIT STATUS PARA ASEGURARNOS QUE TODO ESTE OK Y NO HAYA NINGUN CONFLICTO


# AL FINALIZAR EL TRABAJO DE UNA RAMA, DEVEMOS INTEGRARLA A LA MAIN. Para esto:
1. git add notebooks/nombre_de_la_rama
2. git commits -m "Agregando_Notebook: Nombre_del_Notebook"
3. git push y si sale error ponemos el comando sugerido. Generalmente  es poque no esta la rama creada en el remoto.
4. Vamos a la pagina de github:
        4.1 En la tab Code, nos paramos en la rama que queremos integrar, 
        4.2 Le damos a Contribute
        4.3 Open pull request
        4.4 Creamos el pull request
        4.5 Merge pull request 
        4.6 Confirm Merge
5. git pull: colocamos git pull en la terminal del espcio remoto, para sincronizar ambos espacios: remoto y local. 


# NOTAS IMPORTANTES (OJO!!!!)
### NUNCA HACER CAMBIOS O AGREGAR CODIGO DESDE LA PAGINA DE GITHUB.com !
TRAE MUCHOS PROBLEMAS DE SINCRONIZACION. SIEMPRE HACERLO DESDE LA MAQUINA REMOTA. SI NO, DEJA DE ENTENDER QUIEN ES EL REMOTO Y QUIEN ES EL LOCAL. El que manda siempre es el remoto.

### BEFORE PERFORM A CHECKOUT
If there are any uncommitted changes when you run git checkout, GIT will behave very strangely. 
The strangeness is predictable and sometimes useful, but it is best to avoid it. 
All you need to do, of course, is commit all the new changes before checking out the new head

### BEFORE PERFORM A MERGE
GIT can get very confused if there are uncommitted changes in the files when you ask it to perform a merge. 
So, make sure to commit whatever changes you have made so far before you merge.


# MY NOTES: CLASE 8
1. creamos rama nueva:
        git branch: 03_probability

2. para ver lista de ramas:
        git branch

3. para movernos a la rama que nececitemos:
        git checkout nombre de la rama

4. creamos el notebook dentro de la carpeta notebook:
        touch notebooks/03_probability.ipynb

5. a la derecha del notebook cambiamos del kernel a entorno venv.


# MY NOTES: CLASE 9 (1/8/2025):
Hoy vamos a trabajar con un archivo de jupyter


# MY NOTES: CLASE 10 (1/10/2025):
Primera parte, continuaron con el notebook 4 (Analisis de los pinguinos).
Segunda parte: Random Variables.
Ver el codigo que escribieron los compañeros para resolver el ejercicio. Hay algunos muy interesantes.

# MY NOTES: CLASE 11 (1/13/2025):
excalidraw es una pagina que permite hacer graficas
tambien hay un plug inn que permite usarlo en codespace. 
es lo que usa el profesor como pizarra.



