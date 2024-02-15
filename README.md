# Curso de Shell Script en Bash

![imagen](https://dinahosting.com/blog/cont/uploads/2021/05/Que-es-Bash-Script.jpg)

Bash scripting es la fusión perfecta entre programación y el intérprete de comandos más común de Linux. El uso de bash scripting permite: Automatizar acciones repetitivas, gracias al uso de expresiones matemáticas, como condiciones, bucles puertas lógicas, etc.

## **Introduccion a los Scripts**

**Que es un Shell Script?**

Un Archvio de Texto que contiene varios comandos para que el Shell (ínterprete) los ejecute seguidos.

Su principal objetivo es automatizar tareas o conseguir objetivos con un solo comando.

## Hola Mundo

```bash
#!/bin/bash

# Este es un comentario
``` 
La primera línea indica la **ruta del interprete** le estamos diciendo a la terminal que vamos a trabajar con un archivo **bash**, siempre debe estar **#!** en un archivo **bash**.

En la seguna linea de comandos estamos escribiendo un comentario o un mensaje con **#**, con esto la terminal no toma en cuenta el mensaje.

En esta primera parte haremos un simple script con un mensaje de "Hola Mundo", abriremos nuestra terminal y crearemos un nuevo archivo **mundo.sh** dentro de este archivo escribiremos:

```bash
#!/bin/bash

echo "Hola Mundo"
``` 

luego de esto le daremos permisos de ejecución con:

```
chmod +x mundo.sh
```
Y listo para ejecutar el archivo **bash**:

```
bash mundo.sh
```
Y obtendremos un mensaje de **Hola Mundo** en nuestra terminal.

## **Entrada y Salida de la Informacion**

**Uso de los parametros**

Es un script para resivir información mediante parámetros, que serán cadenas de texto que pondremos después del nombre del script.

Dentro del Script podemos acceder a ellos mediante variables predefinidas del sistema:

* **$n** La información de un parámetro en concreto, siendo **n** un numero del parámetro.

* **$***  Todos los parámetros. Se presentan en una sola cadena de caracteres.

* **$@** Todos los parámetros. En una lista con un elemento por cada parámetro recibido

* **$#** EL número de parámetros  con los que se ha invocado el script. Sera una cifra

Acontinuacion crearemos un script con el nombre de **ejemplo.sh** y escribiremos lo siguiente:

```bash
#!/bin/bash

echo El primer parametro es $1 # Cuando se ejecute en la terminal debes escribir el paremetro de cada uno
echo EL numero de parametros ha sido $#
echo Todos los parametros son: $*
```

```bash
# Leer entrada del usuario
echo -ne "¿Cuál es tu nombre? " && read nombre
echo "Hola, $nombre"

read -p "Nombre" -s nombre2
echo "Hola $nombre2"

echo "Hola, mundo" > salida.txt
cat archivo.txt
```

luego daremos permisos de ejecución:

```
chmod +x ejemplo.sh
```
ahora para ejeutar el script  usaremos el siguiente comando:

```
bash ejemplo.sh param1 param2 param3
```
## **Lectura y Escritura de las Variables**

**Variables**

Sirven para guardar información y acceder a ella posteriormente.

Para referirnos a ellas utlizaremos un identificador que estará compuesto por caracteres alfa numéricos o guión bajo, pero empezar por un número.

Se distingue entre mayúsculas y minúsculas. $VAR no es igual que $var.

**Lectura y Escritura de Variables**

Para guardar datos en una variable simplemente tendremos que asignar un valor, utilizando su identificador SIN el símbolo de dólar.

```bash
variable="Hola" (Es importante que todo esté junto, sin espacios)
```
Y para acceder a su contenido usaremos el símbolo de dólar seguido de su identificador:

```bash
echo variable o llaves: echo ${variable}
```

Creamos un archivo con nombre **variable.sh** y escribimos lo siguiente:

```bash
#!/bin/bash

v1="Hola" # Aqui estamos difiniendo la variable v1
echo $v1 Mundo # Aqui $v1 significa Hola
```
luego le damos permisos de ejecución:

```
chmod +x variable.sh
```
Y ejecutamos con:

```
bash variable.sh
```
Luego en el mismo script agregaremos las siguientes variables:

```bash
#!/bin/bash

v1="Hola" # Aqui estamos difiniendo la variable v1
echo $v1 Mundo # Aqui $v1 significa Hola

v2="Hola"
v3="Como estas?"

echo $v2 $v3
```      
Y ejecutamos con:

```
bash variable.sh
```
## **Variables del Sistema**

**Variables Predefinidas**

Además de las variables para consultar los parámetros, disponemos de algunas similares pero que contiene otra tipo de información:

* **$0** El nombre del Script

* **$$** PID del proceso que se le ha asignado al script en ejcución

* **$?** Resultado devuelto por el útlimo proceso ejecutado

**Variables de Entorno**

Son variables que están definidas en el sistema y que podemos usar si la necesitamos.

Son usados por el propio sistema para su funcionamiento, por ejemplo **$PATH**

A continuacion crearemos un script con nombre **variable2.sh** y escribiremos el siguiente comando:

```bash
#!/bin/bash

echo El script $0 # Nombre del Script
echo Lo esta ejecutando $USER # Variable de entorno
echo Y se le esta asignando el PID:$$ # PID del proceso
echo Usamos el parametro $1

mensaje="Hola mundo"

echo Para decir....$mensaje
```

luego le damos permisos de ejecución:

```
chmod +x variable2.sh
```
Y ejecutamos con:

```
bash variable2.sh
```

## **Funciones**
En Bash, una función es un conjunto de comandos agrupados bajo un nombre que se puede llamar y ejecutar en cualquier parte de un script o en la línea de comandos.

```bash
#!/bin/bash

# Definir una función
mi_funcion() {
    echo "¡Hola desde la función!"
}

# Llamar a la función
mi_funcion
```

## **Operadores**

Existen operadores específicos para trabajar con cadenas y archivos.

**Operadores de cadenas**


```bash
# Longitud de una cadena
cadena="Bash"
echo "La longitud de la cadena es ${#cadena}"

# Concatenar cadenas
cadena1="Hola"
cadena2="Mundo"
concatenacion="${cadena1}, ${cadena2}"
echo $concatenacion
```

**Operadores con Archivos**

```bash
# Verificar si un archivo existe
if [ -e archivo.txt ]; then
    echo "El archivo existe"
fi

# Leer líneas de un archivo
while IFS= read -r linea; do
    echo "$linea"
done < archivo.txt
```

## **Bucles**

Los bucles son estructuras de control que permiten repetir un conjunto de instrucciones varias veces. Aquí te presento dos tipos de bucles comunes en Bash: el bucle for y el bucle while.

**Bucle for**

El bucle for se utiliza para iterar sobre un rango de valores o elementos en una lista.

```bash
# Bucle for
for i in {1..5}; do
    echo $i
done
```

**Bucle while**

El bucle while se utiliza para repetir un bloque de código mientras una condición sea verdadera.

```bash
# Bucle while
contador=0
while [ $contador -lt 5 ]; do
    echo $contador
    ((contador++))
done
```
