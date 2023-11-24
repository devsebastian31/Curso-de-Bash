# Bucle for
for i in {1..5}; do
    echo $i
done

# Bucle while
contador=0
while [ $contador -lt 5 ]; do
    echo $contador
    ((contador++))
done
