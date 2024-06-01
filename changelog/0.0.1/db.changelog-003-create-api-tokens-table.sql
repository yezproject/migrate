-- liquibase formatted sql

-- changeset Admin:1717228764547-5
CREATE TABLE "api_tokens"
(
    "id"      VARCHAR(255) NOT NULL,
    "name"    VARCHAR(255) NOT NULL,
    "user_id" VARCHAR(255) NOT NULL,
    CONSTRAINT "api_tokens_pkey" PRIMARY KEY ("id")
);
