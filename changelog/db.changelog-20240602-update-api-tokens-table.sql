-- liquibase formatted sql

-- changeset yez:20240602-1
ALTER TABLE "api_tokens" ADD "token" VARCHAR(255);
UPDATE "api_tokens" SET token = '' WHERE token IS NULL;
ALTER TABLE "api_tokens" ALTER COLUMN "token" SET NOT NULL;
