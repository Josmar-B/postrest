#!/bin/bash

# Descargar PostgREST desde GitHub
wget https://github.com/PostgREST/postgrest/releases/download/v10.1.1/postgrest-v10.1.1-ubuntu.tar.xz

# Extraer el archivo descargado
tar -xvf postgrest-v10.1.1-ubuntu.tar.xz

# Mover el binario a un directorio accesible
mv postgrest /usr/local/bin/postgrest

# Dar permisos de ejecución al binario
chmod +x /usr/local/bin/postgrest

# Eliminar el archivo descargado para ahorrar espacio
rm postgrest-v10.1.1-ubuntu.tar.xz