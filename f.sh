#!/bin/bash
nombre=$1
lineas=`cat notas.txt | wc -l`
cont=0;
for i in `seq 2 $lineas`
do
    notas=`cat notas.txt | awk '{print $3}' | head -$i | tail -n1`
    nombAlumno=`cat notas.txt | awk '{print $1}' | head -$i | tail -n1`
    if [ $1 = $nombAlumno ]
    then
    if [ $notas -lt 5 ]
    then
    cont=$((cont+1))
    echo $notas
    fi
    fi
done

if [ $cont -eq 0 ] 
then
echo "El alumno $nombre tiene todo aprobado."
else
echo "El alumno $nombre no tiene todo aprobado."
fi

