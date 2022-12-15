# Target your exact production database version
FROM postgres:15-alpine

# Seed database with placeholder data
COPY *.sql /docker-entrypoint-initdb.d/
