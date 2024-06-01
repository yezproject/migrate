-- liquibase formatted sql

-- changeset yez:1717228764547-2
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

-- changeset Admin:1717228764547-4
ALTER TABLE "transactions"
    ADD CONSTRAINT "uk_qoyanjua3q8bbgd21d9x511rq" UNIQUE ("delete_info_id");


-- changeset Admin:1717228764547-7
CREATE TABLE "delete_infos"
(
    "id"     UUID                     NOT NULL,
    "date"   TIMESTAMP WITH TIME ZONE NOT NULL,
    "reason" VARCHAR(255)             NOT NULL,
    CONSTRAINT "delete_infos_pkey" PRIMARY KEY ("id")
);


-- changeset Admin:1717228764547-8
ALTER TABLE "transactions"
    ADD CONSTRAINT "fk8fe7lhku2mi8ps8mpl8218hs2" FOREIGN KEY ("delete_info_id") REFERENCES "delete_infos" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
