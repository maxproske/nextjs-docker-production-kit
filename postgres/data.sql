\connect saas saas_user

-- Schema
CREATE SCHEMA saas AUTHORIZATION saas_user;
GRANT ALL PRIVILEGES ON SCHEMA saas TO saas_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA saas GRANT ALL PRIVILEGES ON TABLES TO saas_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA saas GRANT ALL PRIVILEGES ON SEQUENCES TO saas_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA saas GRANT ALL PRIVILEGES ON FUNCTIONS TO saas_user;

-- Tables
CREATE TABLE saas.users (
    id SERIAL PRIMARY KEY,
    username character varying(32),
    created_at timestamptz NOT NULL DEFAULT now()
);

-- Data
INSERT INTO saas.users (id, username, created_at)
VALUES (1, 'Test', '2023-01-01 00:00:00.000000');

-- Reset sequences in case placeholder data has explicit primary key inserts, 
-- regardless whether table has rows or not, otherwise UPDATEs may fail
SELECT setval(pg_get_serial_sequence('saas.users', 'id'), coalesce(max(id), 0) + 1, false) FROM saas.users;

-- Indexes
CREATE INDEX ON saas.users (created_at);
