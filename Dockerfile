# Usa la imagen oficial de MinIO
FROM minio/minio:latest

# Configuración de las credenciales de acceso
ENV MINIO_ROOT_USER=minio
ENV MINIO_ROOT_PASSWORD=minio1234

# Variables de entorno adicionales para optimización
# Configuración para habilitar la consola en el puerto 9001
ENV MINIO_CONSOLE_ADDRESS=:9001

# Configuración para ignorar advertencias en desarrollo (solo para pruebas locales)
ENV MINIO_PROMETHEUS_AUTH_TYPE=public

# Exponer los puertos necesarios
EXPOSE 9000
EXPOSE 9001

# Crear un directorio de datos predeterminado
RUN mkdir -p /data && chmod -R 777 /data

# Configuración para asegurar los permisos adecuados
VOLUME /data

# Comando de inicio del contenedor
CMD ["minio", "server", "/data", "--console-address", ":9001"]
