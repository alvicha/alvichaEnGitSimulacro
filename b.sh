#!/bin/bash
matriculas=`cat notas.txt | wc -l`

matriculas=$((matriculas-1))
echo "Hay $matriculas matriculas."