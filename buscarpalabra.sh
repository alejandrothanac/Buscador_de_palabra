#!/bin/bash

# ===== Parte 3: busqueda y salida de resultados (Andrik Torres) =====

# Inicializar el contador de archivos encontrados
total=0

echo ""
echo "Buscando: $palabra"
echo "Carpeta: $carpeta"
echo "--------------------------------"

# Recorrer los archivos de la carpeta y sus subcarpetas
while IFS= read -r -d '' archivo; do

    # Revisar si el archivo contiene la palabra
    if grep -qF -- "$palabra" "$archivo" 2>/dev/null; then

        # Mostrar la ubicacion del archivo
        echo "Ubicacion: $archivo"
        ((total++))
    fi

done < <(find "$carpeta" -type f -print0 2>/dev/null)

# Mostrar el total de archivos encontrados
echo "--------------------------------"
echo "Total de archivos encontrados: $total"
