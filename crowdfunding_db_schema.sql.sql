-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/XRCKjn
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varcher(100)   NOT NULL,
    "description" text   NOT NULL,
    "goal" pledged   NOT NULL,
    "pledged" numeric(10,2)   NOT NULL,
    "outcome" varcher(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varcher(10)   NOT NULL,
    "currency" varcher(10)   NOT NULL,
    "launch_date" data   NOT NULL,
    "end_date" data   NOT NULL,
    "category_id" varcher(10)   NOT NULL,
    "subcategory_id" varcher(10)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_id" varcher(10)   NOT NULL,
    "category_name" varcher(50)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" varcher(10)   NOT NULL,
    "subcategory_name" varcher(50)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varcher(50)   NOT NULL,
    "last_name" varcher(100)   NOT NULL,
    "email" varcher(100)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

