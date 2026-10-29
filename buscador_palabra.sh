#!/bin/bash

# ===== Parte 1: validacion de argumentos =====

# Validar que el usuario no escriba mas de dos argumentos
if (( $# > 2 )); then
    echo "Error: escribiste $# argumentos, este programa acepta maximo 2 (palabra y carpeta)"
    exit 1
fi

# Validar que el usuario escriba al menos la palabra a buscar
if (( $# == 0 )); then
    echo "Error: debes escribir la palabra a buscar"
    echo "Uso: bash buscar.sh palabra [carpeta]"
    exit 1
fi

