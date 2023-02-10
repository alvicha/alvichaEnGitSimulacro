#!/bin/bash
nombres=`cat notas.txt | wc -l`
cantidadAprobados=0;
cantidadSuspendidos=0;

echo "Lista aprobats"
for i in `seq 2 $nombres` 
do
    notas=`cat notas.txt | awk '{print $3}' | head -n$i | tail -n1`
    if [ $notas -ge 5 ]
    then
    cantidadAprobados=$((cantidadAprobados+1))
    echo "$notas"
    fi
done

echo "Lista suspendidos"
for i in `seq 2 $nombres`
do
    notas=`cat notas.txt | awk '{print $3}' | head -n$i | tail -n1`
    if [ $notas -lt 5 ]
    then
    cantidadSuspendidos=$((cantidadSuspendidos+1))
    echo "$notas"
    fi
done

echo "Hay $cantidadAprobados aprobados";
echo "Hay $cantidadSuspendidos suspendidos";
echo "Fin del fichero";