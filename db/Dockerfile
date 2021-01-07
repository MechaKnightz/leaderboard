FROM mysql:latest

WORKDIR /

COPY init.sql ./docker-entrypoint-initdb.d/
#disable in prod
COPY sampleData.sql ./docker-entrypoint-initdb.d/