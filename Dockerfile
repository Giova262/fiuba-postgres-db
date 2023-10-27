FROM postgres:alpine

ENV POSTGRES_DB test
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres

COPY init.sql /docker-entrypoint-initdb.d/

# docker build -t my-postgres .
# docker run --name my-postgres -p 5435:5432 -d my-postgres -v .:/var/lib/postgresql/data