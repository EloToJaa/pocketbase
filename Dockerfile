FROM alpine:3.17.2

WORKDIR /app

RUN wget https://github.com/pocketbase/pocketbase/releases/download/v0.13.2/pocketbase_0.13.2_linux_amd64.zip -O pocketbase.zip && \
    unzip pocketbase.zip && \
    rm pocketbase.zip

EXPOSE 8090

CMD ["./pocketbase", "serve", "--dir", "/data/pb_data", "--migrationsDir", "/data/pb_migrations", "--publicDir", "/data/pb_public"]