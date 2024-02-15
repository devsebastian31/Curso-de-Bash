# Leer entrada del usuario
echo -ne "¿Cuál es tu nombre? " && read nombre
echo "Hola, $nombre"

read -p "Nombre" -s nombre2
echo "Hola $nombre2"

echo "Hola, mundo" > salida.txt
cat archivo.txt
