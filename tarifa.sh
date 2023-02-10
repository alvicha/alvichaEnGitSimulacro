#!/bin/bash

read -p "Introduce numero de llamadas: " numLlamadas

calculoTarifa1=100;
calculoTarifa2=( $numLlamadas * 1 )+50;
calculoTarifa3=( $numLlamadas * 2 )+20;

if (( ( calculoTarifa3 < calculoTarifa2 ) && ( calculoTarifa3 < calculoTarifa1 ) ));
then
echo "La tarifa recomendada es la tarifa 3."
elif (( ( calculoTarifa2 < calculoTarifa1 ) && ( calculoTarifa2 < calculoTarifa3 ) ));
then
echo "La tarifa recomendada es la tarifa 2."
else
echo "La tarifa recomendada es la tarifa 1."
fi