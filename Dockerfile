# Usar una imagen base de Ubuntu
FROM ubuntu:20.04

# Instalar dependencias
RUN apt-get update && apt-get install -y \
    wget \
    libpq-dev \
    xz-utils

# Descargar PostgREST desde la URL correcta
RUN wget https://github.com/PostgREST/postgrest/releases/download/v10.2.0/postgrest-v10.2.0-ubuntu.tar.xz
RUN tar -xvf postgrest-v10.2.0-ubuntu.tar.xz
RUN mv postgrest /usr/local/bin/postgrest

# Copiar el archivo de configuración
COPY postgrest.conf /etc/postgrest.conf

# Exponer el puerto
EXPOSE 3000

# Ejecutar PostgREST
CMD ["postgrest", "/etc/postgrest.conf"]
