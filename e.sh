#!/bin/bash
nombre=$1
modulo=$2
nombres=`cat notas.txt | wc -l`

for i in `seq 2 $nombres`
do
    notas=`cat notas.txt | grep $1 | grep $2 | awk '{print $3}' | head -n$i | tail -n1`
    nombAlumno=`cat notas.txt | grep $1 | awk '{print $1}' | head -n$i | tail -n1`
    modulo=`cat notas.txt | grep $2 | awk '{print $2}' | head -n$i | tail -n1`
done

if [ $1 = $nombAlumno ] && [ $2 = $modulo ]
then
echo "El alumno $1 con modulo $2 ha sacado $notas"
if [ $notas -lt 5 ]
then
echo "Suspendido"
else
if [ $notas -le 8 ]
then
echo "Aprobado"
else 
echo "Sobresaliente"
fi
fi
else
echo "El alumno $1 no existe."
fi