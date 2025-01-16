#!/usr/bin/env bash
echo "mi primer script"
myworkingdirectory=$(pwd) # Asignar el directorio de trabajo actual a la variable
echo "$myworkingdirectory" # Imprimir el valor de la variable
python -m pip freeze > requirements.txt # Generar un archivo requirements.txt con las dependencias de Python
activation="/.venv/bin/activate" # Aca estamos generando la variable activation con el comando que activa el entorno virtual
# source "$myworkingdirectory""$activation" 
python script.py

