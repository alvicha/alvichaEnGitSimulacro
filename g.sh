 #!/bin/bash
lineas=`cat notas.txt | wc -l`
lineas2=$((lineas-1))
suma=0
for i in `seq 2 $lineas`
do
   media=`cat notas.txt | awk '{print $3}' | head -n$i | tail -n1`
   suma=$((suma+media))
   echo $suma
done
promedio=$((suma/$lineas2))
echo "La media de todos los modulos es $promedio"