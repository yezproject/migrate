-- liquibase formatted sql

-- changeset yez:20240601-3
CREATE TABLE "transactions"
(
    "id"               VARCHAR(255)             NOT NULL,
    "amount"           FLOAT8                   NOT NULL,
    "category_id"      VARCHAR(255),
    "create_date"      TIMESTAMP WITH TIME ZONE NOT NULL,
    "creator_user_id"  VARCHAR(255)             NOT NULL,
    "currency"         VARCHAR(255)             NOT NULL,
    "is_delete"        BOOLEAN                  NOT NULL,
    "name"             VARCHAR(255)             NOT NULL,
    "transaction_date" TIMESTAMP WITH TIME ZONE NOT NULL,
    "type"             VARCHAR(255)             NOT NULL,
    "update_date"      TIMESTAMP WITH TIME ZONE NOT NULL,
    "delete_info_id"   UUID,
    CONSTRAINT "transactions_pkey" PRIMARY KEY ("id")
);

-- changeset yez:20240601-4
ALTER TABLE "transactions"
    ADD CONSTRAINT "transactions_delete_info_id_unique" UNIQUE ("delete_info_id");


-- changeset yez:20240601-5
CREATE TABLE "delete_infos"
(
    "id"     UUID                     NOT NULL,
    "date"   TIMESTAMP WITH TIME ZONE NOT NULL,
    "reason" VARCHAR(255)             NOT NULL,
    CONSTRAINT "delete_infos_pkey" PRIMARY KEY ("id")
);


-- changeset yez:20240601-6
ALTER TABLE "transactions"
    ADD CONSTRAINT "transactions_delete_info_id_fkey" FOREIGN KEY ("delete_info_id") REFERENCES "delete_infos" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
