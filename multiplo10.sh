#!/bin/bash

# Solicitar al usuario que introduzca un número
read -p "Ingrese un número: " numero

# Usamos la instrucción if para verificar si el número es multiplo de 10
if [ $(($numero % 10)) -eq 0 ]; then
   # Si el número es un multiplo de 10, imprimimos un mensaje
   echo "$numero es un múltiplo de 10"
else
   # Si el número no es un múltiplo de 10, imprimimos un mensaje diferente
   echo "$numero no es un múltiplo de 10"
fi