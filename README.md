# README

La primer linea de un readme siempre es # Readme por convencion. 

En el archivo readme, se escribe utilizando markdown, que no habilita a usar texto, formulas, tablas, etc. Por eso termina en md.

El # significa titulo. El ## Subtiluto. Y asi en adelante.

## RECETA para Preparar Codespace

1. Ir a Extenciones, e instalar python y jupyter

2. 1RO: Creamos nuestro entorno virtual llamado "venv"
        "python -m":    indica que cargue el modulo de python
        "venv":         genera la carpeta "venv" donde se va a cargar ese modulo
        ".venv":        Como es una carpeta de sistema la idea es que este oculta. 
                        En lynux, que es el sistema operativo que tienen las maquinas virtuales de codespace, 
                        todo lo que empieza con "." son archivos o carpetas ocultos. 
          
```bash
        python -m venv .venv
```

   2DO: Lo activamos. Sabemos que quedo activado al ver que en la terminal la linea de comandos comienza con "(.venv)"
        "source": Comando utilizado para ejecutar / correr un script de bash. Puede terminar en sh

```bash
        source .venv/bin/activate
```

3. Crear el archivo gitignore,
        Para evitar que git haga tracking de la carpeta del entorno virtual, Ya que nosotros queremos que git haga seguimiento de codigo, y no de paquetes.
        Para esto es necesario agregar manualmente estas dos lineas en el archivo:
                Linea 1: .venv          # Nombre de la carpeta que NO queremos que se haga tracking. Esta carpeta es un entorno virtual.
                Linea 2: .env           # Nombre de la carpeta donde guardaremos variables de entorno cuando las necesitemos.

        Otra forma de crear el archivo gitignore, es con el comando echo, que lo crea y le carga ambas lineas dentro:

```bash
                echo -e ".venv\n.env" > gitignore
```
     
4. Hacemos commit en la rama main, solo del archivo gitignore        
```bash       
        git add gitignore
        git commit -m "Add gitignore"
        git push
```

5. Instalamos los paquetes / librerias que necesitaremos de python. Hay dos formas de hacerlo.

(1) Una forma: con el comando pip
```bash
        python -m pip install ipykernel nbformat pandas seaborn scikit-learn plotly
```

(2) Otra forma: con el archivo requirements.txt
        Este archivo se puede generar una vez que las librerias ya fueron instaladas.
        Este archivo tiene dentro el comando pip intall, y luego detalla todas las librerias que necesitamos, incluyendo sus versiones, y separandolas por categorias.
        En este caso, el comando seria:

```bash
        python -m pip install -r requirements.txt
```
        "python -m":    Llama al modulo pip, que es un instalador de paquetes
        "intall":       Luego del install le indicamos a ese modulo, que paquetes nos interesa que instale listandoselos, 
                        o de lo contrario, refiriendonos a un txt que incluye esa lista. 
                        Por convenvion se le llama "requirements.txt". 
                        Es buena practica, que siempre que generemos un entonrno virtual, tambien generemos un archivo "requirements.txt",
                        para que al utilizarlo otra persona, se instalen exactamente las mismas librerias que utilizamos nosotros, a los efecectos de reproducibilidad.
        



7. Crear Carpetas de Trabajo
```bash
        mkdir notebooks src app docs
        mkdir -p data/{raw,baking,final}
```

8. Generamos los archivos que necesitemos con el comando touch. Ejemplo, creamos un nuevo notebook dentro de la carpeta notebooks. 
        Importante!!!   
        Recordar seleccionar el kernel, (arriba a la derecha debemos seleccionar el entorno virtual que creamos = venv)
        Recordar como primer paso, importar dentro del notebook, las librerias que necesitemos. 
        Las mismas deben estar incluidas en el archivo requirements.
```bash
        # Ejemplo:
        import pandas as pd # libreria para manipulacion de datos mediante data frames
        import numpy as np # libreria para manipulacion de datos mediantes matrices
        import matplotlib.pyplot as plt # libreria para manipulacion de graficos
        import seaborn as sns # pero esa libreria no esta en requirements asi que no la ponemos no la vamos a usar.
```


```bash
        touch Notebooks/Project_A.txt  
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

### JAMAS SE TRABAJA EN MAIN.
SE TRABAJA EN LAS RAMAS, Y LUEGO SE INTEGRAN A MAIN

### NUNCA HACER CAMBIOS O AGREGAR CODIGO DESDE LA PAGINA DE GITHUB.com !
TRAE MUCHOS PROBLEMAS DE SINCRONIZACION. SIEMPRE HACERLO DESDE LA MAQUINA REMOTA. SI NO, DEJA DE ENTENDER QUIEN ES EL REMOTO Y QUIEN ES EL LOCAL. El que manda siempre es el remoto.


### SI LAS RAMAS LAS INTEGRO DESDE GENERANDO UN PULL REQUEST DESDE LA WEB DE GITHUB, LUEGO DE TERMINAR EL PROCESO DEBO IR A LA TERIMAN, PARARME EN LA RAMA MAIN, Y HACER UN "git pull origin main"
SI NO HAGO ESTO, LA MAIN QUEDARA DESACTUALIZADA EN EL REMOTO.

### BEFORE PERFORM A CHECKOUT
If there are any uncommitted changes when you run git checkout, GIT will behave very strangely. 
The strangeness is predictable and sometimes useful, but it is best to avoid it. 
All you need to do, of course, is commit all the new changes before checking out the new head

### BEFORE PERFORM A MERGE
GIT can get very confused if there are uncommitted changes in the files when you ask it to perform a merge. 
So, make sure to commit whatever changes you have made so far before you merge.


### REQUIREMENTS.TXT (Que hace el comando: python -m pip freeze > requirements.txt)
Este comando es ampliamente utilizado en proyectos de Python para documentar y gestionar dependencias.
1. Desglose del comando
        python -m pip freeze:

        python -m: Le dice a Python que ejecute un módulo como un script. En este caso, el módulo es pip.
        pip freeze: Este comando genera una lista de todas las bibliotecas instaladas en el entorno actual de Python, junto con sus versiones exactas.

        Esto asegura que cualquier persona que trabaje en el proyecto pueda instalar exactamente las mismas versiones de las bibliotecas

2. "> requirements.txt":

        >: Es un operador de redirección en Shell que escribe la salida del comando en un archivo.
        requirements.txt: Es el nombre del archivo donde se guarda la lista generada por pip freeze.

        Al ejecutar el comando, la salida de pip freeze se guarda en un archivo llamado requirements.txt en lugar de mostrarse en la consola.

3. Pare que sirve?
        1. Documentar dependencias:
        El archivo requirements.txt sirve como un registro de todas las bibliotecas y sus versiones usadas en el proyecto. Esto es útil para compartir el entorno de desarrollo con otros.

        2. Reproducir el entorno:
        Cualquier persona que descargue el proyecto puede instalar las mismas dependencias ejecutando: pip install -r requirements.txt
        Esto asegura que el proyecto se comporte igual en diferentes máquinas.

        3.Manejo de versiones:
        Garantiza que las versiones de las bibliotecas no cambien inesperadamente, evitando problemas de compatibilidad.

4. Ejemplo de uso en un flujo de trabajo
        1. Tienes un proyecto de Python y quieres registrar sus dependencias. 
        Ejecutas: 
        python -m pip freeze > requirements.txt

        2. El archivo requirements.txt generado podría verse así:
        flask==2.1.2
        requests==2.26.0
        numpy==1.21.2

        3. Compartes tu proyecto con otros desarrolladores. 
        Ellos ejecutan: 
        pip install -r requirements.txt
        Esto instala las mismas versiones de las bibliotecas listadas.

5. Recomendaciones
        1. Usa entornos virtuales:
        Es mejor ejecutar este comando dentro de un entorno virtual (venv o virtualenv) para capturar solo las dependencias del proyecto y no las de todo el sistema.

        2. Actualiza regularmente requirements.txt:
        Cada vez que agregues nuevas bibliotecas o actualices versiones, vuelve a ejecutar el comando python -m pip freeze > requirements.txt. 
        Este comando sobrescribirá el contenido del archivo requirements.txt con la lista actualizada de todas las bibliotecas y versiones instaladas en tu entorno.

        3. Antes de ejecutar el comando:
        Asegúrate de que todas las nuevas bibliotecas estén instaladas correctamente en tu entorno. Por ejemplo:
                pip install nombre-de-la-libreria

        4. Después de actualizar requirements.txt:
        Si trabajas en un equipo o tienes un repositorio de Git, recuerda confirmar (commit) los cambios en el archivo para que todos los miembros del equipo tengan acceso a las versiones actualizadas.
                git add requirements.txt
                git commit -m "Update requirements.txt with latest dependencies"
                git push

        5. Usa pip freeze con entornos virtuales:
        Si usas un entorno virtual (venv o similar), activa el entorno antes de ejecutar el comando para evitar incluir bibliotecas globales no relacionadas con tu proyecto.
        Ejemplo en un entorno virtual activado:
                source .venv/bin/activate  # En Linux/Mac
                .venv\Scripts\activate     # En Windows
                python -m pip freeze > requirements.txt

        6. Opcional: Comprobación de diferencias antes de actualizar
        Si deseas ver qué ha cambiado en tus dependencias antes de actualizar requirements.txt, puedes usar diff o git diff:
                diff requirements.txt <(python -m pip freeze)

        O, si trabajas con Git y el archivo está versionado:
                git diff requirements.txt

        Esto te permitirá decidir si realmente necesitas actualizar el archivo.


# ⭐ TIPS ⭐

1. Imprimir resultados con texto usando f string:
        Para hacer el resultado mas legible, le agregamos separador de miles, (la coma sera el que usaremos por convencion), 
        colocando lo siguiente luego del nombre de mi variable.
        
2. Redondear resultados: 
        Supongamos que suma es el resultado que retorna determinada funcion que definimos. Para que no tenga decimales debemos colocarlo entre parentesis curbos, y luego de los dos puntos, colocar la cantidad de decimales. print(f"Mi Resultado es: {suma:,}")
       


# MY NOTES: CLASE 7
En la segunda parte de la clase, haremos el projecto de la leccion de github llamado "Fix the Misspell Challenge"
Lo haremos con las indicaciones que nos da el profesor que no son exactamente las que pone la plataforma.
para esto generaremos un script de shell con el comando touch myscript.sh y lo editaremos.
1. Linea 1: ponemos lo siguiente, no importa el porque: #!/usr/bin/env bash
2. Linea 2: ponemos" echo "mi primer script"
3. Luego lo corremos desde la terminal con: sh myscript.sh
4. Ahora vamos a hacer una edicion en el script, copiando el valor del working directory.
        Para esto en la tercer linea del script creamos una variable: 
        myworkingdirectory=$(pwd)
        Para llamar a un comando en bash debemos usar el simbolo "$" y colocar entre parentesis el comando
        En bash a diferencia de python, las asignaciones de variables se hacen sin espacios.

5. Linea 4: generare un sentencia para imprimirla. Para esto escribo:
        echo $(myworkingdirectory)
        De esta forma llamo a la variable. Es decir he tomado la variable de comando pwd y la he imprimido con el comando echo


6. Luego corro el script desde la terminal con: sh myscript.sh

7. Linea 5: Ahora le vamos a pedir al shell, que ejecute un comando de python
        python -m pip freeze > requirements.txt

8. Guardamos el archivo
9. Corremos el script desde la terminal con: sh myscript.sh

Con esto vemos que puedo encadenar ejecuciones de bash y de python en una sola linea.
Lo cual es muy util ya que puedo tener control sobre lo que veo con el bash, y lo que ejecuto.
A la izquierda, en el explorador vemos que se creo el archivo requirements.txt.
Este archivo incluye todas las librerias y sus versiones, que se han instalado en mi entorno.

10. Linea 6: Vamos a agregar esta linea para crear una variable con el comando que activa el entorno virtual venv.
        activation="/.venv/bin/activate"
11. Linea 7: Generamos la linea source. En shell hay que darle la ruta completa del directorio del entorno que quiero activar.
        source $(myworkingdirectory)$(activation) 

12. Guardamos el archivo

13. Ahora vamos a la terminal, y ya no vamos a escribir sh para correr el script. Ya que cuando escribimos sh todo ocurre en una ejecucion virtual.
En cambio, para correr el script escribiremos:
        source myscript.sh

        

14. Conclucion 1:
Esto nos permite automatizar con un script tareas repetitivas que solemos hacer al trabajar con python:
        1. crear carpetas, archivos
        2. Activar entornos
        3. definier Librerias fijas para el entorno. 
        4. podriamos crear el archvo venv. etc.
Eso es lo bueno de los scripts, ya que lo que hacen es orquestan la ejecucion de comandos combinados de python, y asi automatizar un monton de cosas.


15. Vamos a crear un archivo script de python para poder ejecutarlo y editarlo. Para esto escribimos en la terminal:
        touch script.py
16. Linea 1: i = 3
17. Linea 2: print(f"i al cuadrado es:(i*i)")
18. Linea 3: mylist = [1,2,3,4]
19. Linea siguientes: hacemos un for que imprima un elemento a la vez
20. Guardamos el archivo.
21. Lo corremos(ejecutamos) desde la terminal con: python script.py 

22. Como hacemos para llamar a un script y ejecutarlo dentro de un bash?
23. Vamos al script que hemos hecho en shell (myscript.sh)
24. Comentamos la linea que tiene el source, ya que el entorno virtual ya lo tenemos activo.
25. Linea 8: escribimos el comando que corre el script de python con:
        python script.py
26. Guardamos
27. En la terminal corremos el script de shell con:
        source myscript.sh

28. Conclusion 2:
Con esto queda demostrado que en un mismo script de shell se pueden correr comandos de bash, y correr scripts de python que incluyan codigos que hacen distintas tareas.
Todo esto ejecutandose de forma automatizada. 


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


# MY NOTES: CLASE 5 (12/27/2024): OPERACIONES CON ARRAYS Y DATAFRAMES | PREWORK.
Vemos herramientas para entregar el projecto del pre-work.


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


# MY NOTES: CLASE 12 (1/15/2025):
La clase de hoy veremos Hypothesis Testing
crearemos una nueva rama para la clase de hoy
JAMAS SE TRABAJA EN MAIN.
SE TRABAJA EN LAS RAMAS, Y LUEGO SE INTEGRAN EN MAIN
Me fui en el corte.
Repasar clase porque no entendi nada.

