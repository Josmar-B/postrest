# Usar la imagen oficial de PostgREST
FROM postgrest/postgrest:v10.2.0

# Copiar el archivo de configuración
COPY postgrest.conf /etc/postgrest.conf

# Exponer el puerto
EXPOSE 3000

# Ejecutar PostgREST
CMD ["postgrest", "/etc/postgrest.conf"]
