-- liquibase formatted sql

-- changeset yez:20240601-6
CREATE TABLE "categories"
(
    "id"             VARCHAR(255) NOT NULL,
    "create_user_id" VARCHAR(255),
    "name"           VARCHAR(255) NOT NULL,
    CONSTRAINT "categories_pkey" PRIMARY KEY ("id")
);
