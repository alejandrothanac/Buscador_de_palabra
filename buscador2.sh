#!/bin/bash
# ===== Parte 2: definir la palabra y la carpeta (Integrante 2) =====

# El primer argumento es la palabra a buscar
palabra=$1

# El segundo argumento es la carpeta, si no se escribe se busca en todo el sistema
if (( $# == 2 )); then
    carpeta=$2
else
    carpeta="/"
    echo "No escribiste una carpeta, se buscara en todo el sistema"
fi

# Validar que la carpeta exista
if [[ ! -d "$carpeta" ]]; then
    echo "Error: la carpeta '$carpeta' no existe"
    exit 1
fi

