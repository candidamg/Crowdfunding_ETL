
CREATE TABLE "CONTACTS" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "email" VARCHAR   NOT NULL,
    CONSTRAINT "pk_CONTACTS" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "CATEGORY" (
    "category_id" VARCHAR   NOT NULL,
    "category_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_CATEGORY" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "SUBCATEGORY" (
    "subcategory_id" VARCHAR   NOT NULL,
    "subcategory_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_SUBCATEGORY" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "CAMPAIGN" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" INT   NOT NULL,
    "pledged" INT   NOT NULL,
    "outcome" VARCHAR   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "currency" VARCHAR   NOT NULL,
    "launch_date" DATETIME   NOT NULL,
    "end_date" DATETIME   NOT NULL,
    "category_id" VARCHAR   NOT NULL,
    "subcategory_id" VARCHAR   NOT NULL
);

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_contact_id" FOREIGN KEY("contact_id")
REFERENCES "CONTACTS" ("contact_id");

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_category_id" FOREIGN KEY("category_id")
REFERENCES "CATEGORY" ("category_id");

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "SUBCATEGORY" ("subcategory_id");

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
