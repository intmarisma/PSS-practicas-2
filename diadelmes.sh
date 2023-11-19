#!/bin/bash

# Obtener el mes y el año actual
mes_actual=$(date +"%m")
año_actual=$(date +"%Y")

# Determinar si el año es bisiesto
if (( ($año_actual % 4 == 0 && $año_actual % 100 != 0) || $año_actual % 400 == 0 )); then
    bisiesto=true
else
    bisiesto=false
fi

# Determinar el número de días en el mes actual, considerando si el año es bisiesto
case $mes_actual in
    "01" | "03" | "05" | "07" | "08" | "10" | "12")
        dias=31
        ;;
    "04" | "06" | "09" | "11")
        dias=30
        ;;
    "02")
        if [ $bisiesto = true ]; then
            dias=29
        else
            dias=28
        fi
        ;;
esac

# Mostrar el resultado
nombre_mes=$(date +"%B")
echo "Estamos en $nombre_mes, un mes con $dias días"
