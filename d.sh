#!/bin/bash
read -p "Introduce una nota numerica: " nota

if [ $nota -ge 0 ] && [ $nota -le 10 ]
then 
if [ $nota -lt 5 ]
then
echo "Suspendido"
else
if [ $nota -le 8 ]
then
echo "Aprobado"
else 
echo "Sobresaliente"
fi
fi
else
echo "Nota incorrecta."
fi