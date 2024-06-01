-- liquibase formatted sql

-- changeset yez:1717228764547-1
CREATE TABLE "users"
(
    "id"          VARCHAR(255)             NOT NULL,
    "approved_at" TIMESTAMP WITH TIME ZONE,
    "create_at"   TIMESTAMP WITH TIME ZONE NOT NULL,
    "email"       VARCHAR(255)             NOT NULL,
    "full_name"   VARCHAR(255)             NOT NULL,
    "password"    VARCHAR(255)             NOT NULL,
    "role"        VARCHAR(255)             NOT NULL,
    "status"      VARCHAR(255)             NOT NULL,
    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- changeset yez:1717228764547-3
ALTER TABLE "users"
    ADD CONSTRAINT "uk_6dotkott2kjsp8vw4d0m25fb7" UNIQUE ("email");
