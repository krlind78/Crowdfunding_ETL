-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/LIChRE
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "CAMPAIGN" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(250)   NOT NULL,
    "description" VARCHAR(250)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(250)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(250)   NOT NULL,
    "currency" VARCHAR(250)   NOT NULL,
    "launch_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(250)   NOT NULL,
    "subcategory_id" VARCHAR(250)   NOT NULL,
    CONSTRAINT "pk_CAMPAIGN" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "CATEGORY" (
    "category_id" VARCHAR(250)   NOT NULL,
    "category" VARCHAR(250)   NOT NULL,
    CONSTRAINT "pk_CATEGORY" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "SUBCATEGORY" (
    "subcategory_id" VARCHAR(250)   NOT NULL,
    "subcategory" VARCHAR(250)   NOT NULL,
    CONSTRAINT "pk_SUBCATEGORY" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "CONTACTS" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(250)   NOT NULL,
    "last_name" VARCHAR(250)   NOT NULL,
    "email" VARCHAR(250)   NOT NULL,
    CONSTRAINT "pk_CONTACTS" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_contact_id" FOREIGN KEY("contact_id")
REFERENCES "CONTACTS" ("contact_id");

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_category_id" FOREIGN KEY("category_id")
REFERENCES "CATEGORY" ("category_id");

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "SUBCATEGORY" ("subcategory_id");

