# Verificar si un archivo existe
if [ -e archivo.txt ]; then
    echo "El archivo existe"
fi

# Leer líneas de un archivo
while IFS= read -r linea; do
    echo "$linea"
done < archivo.txt
