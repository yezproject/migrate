-- liquibase formatted sql

-- changeset yez:20240601-7
CREATE TABLE "api_tokens"
(
    "id"      VARCHAR(255) NOT NULL,
    "name"    VARCHAR(255) NOT NULL,
    "user_id" VARCHAR(255) NOT NULL,
    CONSTRAINT "api_tokens_pkey" PRIMARY KEY ("id")
);
