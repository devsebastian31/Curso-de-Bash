#!/bin/bash
# Este es un comentario
# Los scripts de Bash generalmente comienzan así para indicar que se debe ejecutar con Bash

# Variables
nombre="Usuario"
echo "Hola, $nombre"  # Imprime: Hola, Usuario
read -p "Nombre" -s nombre2
echo "Hola $nombre2"

# Estructuras de control
if [ $nombre == "Usuario" ]; then
  echo "Bienvenido, Usuario"
elif [ $nombre == "Admin" ]; then
  echo "Hola, Admin"
else
  echo "Hola, desconocido"
fi

# Bucles
for i in {1..5}; do
  echo "Número: $i"
done

# Funciones
function saludar() {
  echo "¡Hola, $1!"
}

saludar "Mundo"  # Imprime: ¡Hola, Mundo!

# Lectura de entrada
echo "¿Cuál es tu edad?"
read edad
echo "Tienes $edad años."

# Redirección y pipes
echo "Hola" > archivo.txt  # Redirige la salida al archivo
cat archivo.txt            # Muestra el contenido del archivo

# Comandos útiles
echo "Fecha actual: $(date)"
echo "Directorio actual: $(pwd)"
echo "Archivos en el directorio: $(ls)"

# Condiciones y operadores lógicos
if [ $edad -ge 18 ] && [ $edad -le 65 ]; then
  echo "Eres un adulto"
else
  echo "Eres joven o mayor"
fi

# Case
case $nombre in
  "Usuario")
    echo "Hola, Usuario"
    ;;
  "Admin")
    echo "Hola, Admin"
    ;;
  *)
    echo "Hola, desconocido"
    ;;
esac

# Arrays
frutas=("Manzana" "Plátano" "Uva")
echo "Primera fruta: ${frutas[0]}"

# Ejecución de comandos externos
resultado=$(ls)
echo "Archivos en el directorio: $resultado"
