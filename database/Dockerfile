FROM library/postgres:12.1

ENV POSTGRES_USER system
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_DB db_jsonmutator

COPY ddl.sql /docker-entrypoint-initdb.d/
COPY dml.sql /docker-entrypoint-initdb.d/
