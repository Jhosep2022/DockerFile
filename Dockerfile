FROM minio/minio:latest

ENV MINIO_ROOT_USER=minio
ENV MINIO_ROOT_PASSWORD=minio1234

EXPOSE 9000
EXPOSE 9001

CMD ["minio", "server", "/data", "--console-address", ":9001"]