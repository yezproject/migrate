-- liquibase formatted sql

-- changeset yez:20240601-1
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

-- changeset yez:20240601-2
ALTER TABLE "users"
    ADD CONSTRAINT "users_email_unique" UNIQUE ("email");
