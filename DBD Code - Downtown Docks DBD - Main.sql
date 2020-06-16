-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/UJeKLP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "boats" (
    "boat_id" SERIAL   NOT NULL,
    "boat" VARCHAR(60)   NOT NULL,
    "hailing_port" VARCHAR(30)   NOT NULL,
    "boat_type" VARCHAR(30)   NOT NULL,
    "make" VARCHAR(30)   NOT NULL,
    "model" VARCHAR(30)   NOT NULL,
    "year" DATE   NOT NULL,
    "length_overall" INTEGER   NOT NULL,
    "yield_length" INTEGER   NOT NULL,
    "beam" INTEGER   NOT NULL,
    "draft" INTEGER   NOT NULL,
    "height" INTEGER   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_boats" PRIMARY KEY (
        "boat_id"
     )
);

CREATE TABLE "harbors" (
    "harbor_id" SERIAL   NOT NULL,
    "harbor_name" VARCHAR(60)   NOT NULL,
    "address" VARCHAR(60)   NOT NULL,
    "city" VARCHAR(60)   NOT NULL,
    "state" VARCHAR(60)   NOT NULL,
    "zip" INTEGER   NOT NULL,
    "latitude" DEC   NOT NULL,
    "longitude" DEC   NOT NULL,
    "number_of_slips" NUMERIC   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_harbors" PRIMARY KEY (
        "harbor_id"
     )
);

CREATE TABLE "amenities" (
    "amenity_id" SERIAL   NOT NULL,
    "amenity_name" VARCHAR(60)   NOT NULL,
    "description" VARCHAR(60)   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_amenities" PRIMARY KEY (
        "amenity_id"
     )
);

CREATE TABLE "events" (
    "event_id" SERIAL   NOT NULL,
    "event_name" VARCHAR(60)   NOT NULL,
    "email" VARCHAR(60)   NOT NULL,
    "phone_number" NUMERIC   NOT NULL,
    "address" VARCHAR(60)   NOT NULL,
    "city" VARCHAR(60)   NOT NULL,
    "state" VARCHAR(60)   NOT NULL,
    "zip" INTEGER   NOT NULL,
    "start_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "start_time" DATE   NOT NULL,
    "end_time" DATE   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_events" PRIMARY KEY (
        "event_id"
     )
);

CREATE TABLE "restaurants" (
    "restaurant_id" SERIAL   NOT NULL,
    "restaurant_name" VARCHAR(60)   NOT NULL,
    "email" VARCHAR(60)   NOT NULL,
    "phone_number" NUMERIC   NOT NULL,
    "address" VARCHAR(60)   NOT NULL,
    "rating" INTEGER   NOT NULL,
    "city" VARCHAR(60)   NOT NULL,
    "state" VARCHAR(60)   NOT NULL,
    "zip" INTEGER   NOT NULL,
    "latitude" DEC   NOT NULL,
    "longitude" DEC   NOT NULL,
    "days" DATE   NOT NULL,
    "open_time" DATE   NOT NULL,
    "close_time" DATE   NOT NULL,
    "to_go" BOOLEAN   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_restaurants" PRIMARY KEY (
        "restaurant_id"
     )
);

CREATE TABLE "bridges" (
    "bridge_id" SERIAL   NOT NULL,
    "bridge_name" VARCHAR(60)   NOT NULL,
    "height" INTEGER   NOT NULL,
    "latitude" DEC   NOT NULL,
    "longitude" DEC   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_bridges" PRIMARY KEY (
        "bridge_id"
     )
);

CREATE TABLE "docks" (
    "dock_id" SERIAL   NOT NULL,
    "dock_name" VARCHAR(60)   NOT NULL,
    "latitude" DEC   NOT NULL,
    "longitude" DEC   NOT NULL,
    "dock_length" INTEGER   NOT NULL,
    "dock_beam" INTEGER   NOT NULL,
    "bridges_name" VARCHAR(60)   NOT NULL,
    "amenity_name" VARCHAR(60)   NOT NULL,
    "restaurant_name" VARCHAR(60)   NOT NULL,
    "event_name" VARCHAR(60)   NOT NULL,
    "on_the_go_id" INTEGER   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_docks" PRIMARY KEY (
        "dock_id"
     )
);

CREATE TABLE "bridges_docks" (
    "bridges_dock_id" INTEGER   NOT NULL,
    "dock_id" INTEGER   NOT NULL,
    "bridge_id" INTEGER   NOT NULL,
    "bridge_name" VARCHAR(60)   NOT NULL,
    "height" INTEGER   NOT NULL,
    "latitude" DEC   NOT NULL,
    "longitude" DEC   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_bridges_docks" PRIMARY KEY (
        "bridges_dock_id"
     )
);

CREATE TABLE "amenities_docks" (
    "amenities_dock_id" INTEGER   NOT NULL,
    "dock_id" INTEGER   NOT NULL,
    "amenity_id" INTEGER   NOT NULL,
    "amenity_name" VARCHAR(60)   NOT NULL,
    "description" VARCHAR(60)   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_amenities_docks" PRIMARY KEY (
        "amenities_dock_id"
     )
);

CREATE TABLE "restaurants_docks" (
    "restaurants_dock_id" INTEGER   NOT NULL,
    "dock_id" INTEGER   NOT NULL,
    "restaurant_id" INTEGER   NOT NULL,
    "restaurant_name" VARCHAR(60)   NOT NULL,
    "email" VARCHAR(60)   NOT NULL,
    "phone_number" NUMERIC   NOT NULL,
    "address" VARCHAR(60)   NOT NULL,
    "rating" INTEGER   NOT NULL,
    "city" VARCHAR(60)   NOT NULL,
    "state" VARCHAR(60)   NOT NULL,
    "zip" INTEGER   NOT NULL,
    "latitude" DEC   NOT NULL,
    "longitude" DEC   NOT NULL,
    "days" DATE   NOT NULL,
    "open_time" DATE   NOT NULL,
    "close_time" DATE   NOT NULL,
    "to_go" BOOLEAN   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_restaurants_docks" PRIMARY KEY (
        "restaurants_dock_id"
     )
);

CREATE TABLE "events_docks" (
    "events_dock_id" SERIAL   NOT NULL,
    "dock_id" INTEGER   NOT NULL,
    "event_id" INTEGER   NOT NULL,
    "event_name" VARCHAR(60)   NOT NULL,
    "email" VARCHAR(60)   NOT NULL,
    "phone_number" NUMERIC   NOT NULL,
    "address" VARCHAR(60)   NOT NULL,
    "city" VARCHAR(60)   NOT NULL,
    "state" VARCHAR(60)   NOT NULL,
    "zip" INTEGER   NOT NULL,
    "start_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "start_time" DATE   NOT NULL,
    "end_time" DATE   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_events_docks" PRIMARY KEY (
        "events_dock_id"
     )
);

CREATE TABLE "boatUS" (
    "boatUS_id" INTEGER   NOT NULL,
    "boater_id" INTEGER   NOT NULL,
    "boatUS_membership_number" VARCHAR(60)   NOT NULL,
    "boatUS_membership_zip" INTEGER   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_boatUS" PRIMARY KEY (
        "boatUS_id"
     )
);

CREATE TABLE "safe_harbor" (
    "safe_harbor_ID" INTEGER   NOT NULL,
    "boater_id" INTEGER   NOT NULL,
    "safe_harbor_membership_number" VARCHAR(60)   NOT NULL,
    "safe_harbor_membership_zip" INTEGER   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_safe_harbor" PRIMARY KEY (
        "safe_harbor_ID"
     )
);

CREATE TABLE "registration" (
    "registration_ID" INTEGER   NOT NULL,
    "boater_id" INTEGER   NOT NULL,
    "registration_number" VARCHAR(60)   NOT NULL,
    "registration_expiration" DATE   NOT NULL,
    "registration_document" INTEGER   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_registration" PRIMARY KEY (
        "registration_ID"
     )
);

CREATE TABLE "insurance" (
    "insurance_id" INTEGER   NOT NULL,
    "boater_id" INTEGER   NOT NULL,
    "insurance_company_name" VARCHAR(60)   NOT NULL,
    "insurance_policy_number" VARCHAR(60)   NOT NULL,
    "insurance_expiration" DATE   NOT NULL,
    "insurance_document" INTEGER   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_insurance" PRIMARY KEY (
        "insurance_id"
     )
);

CREATE TABLE "boater" (
    "boater_id" SERIAL   NOT NULL,
    "first_name" VARCHAR(60)   NOT NULL,
    "last_name" VARCHAR(60)   NOT NULL,
    "email" VARCHAR(60)   NOT NULL,
    "phone_number" NUMERIC   NOT NULL,
    "boatUS_membership_number" VARCHAR(60)   NOT NULL,
    "safe_harbor_membership_number" VARCHAR(60)   NOT NULL,
    "registration_number" VARCHAR(60)   NOT NULL,
    "insurance_company_name" VARCHAR(60)   NOT NULL,
    "insurance_policy_number" VARCHAR(60)   NOT NULL,
    "membership_id" INTEGER   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_boater" PRIMARY KEY (
        "boater_id"
     )
);

CREATE TABLE "boaters_boat" (
    "boaters_boat_id" INTEGER   NOT NULL,
    "boater_id" INTEGER   NOT NULL,
    "boat_id" INTEGER   NOT NULL,
    "boat_name" VARCHAR(60)   NOT NULL,
    "boat" VARCHAR(60)   NOT NULL,
    "hailing_port" VARCHAR(30)   NOT NULL,
    "boat_type" VARCHAR(30)   NOT NULL,
    "make" VARCHAR(30)   NOT NULL,
    "model" VARCHAR(30)   NOT NULL,
    "year" DATE   NOT NULL,
    "length_overall" INTEGER   NOT NULL,
    "yield_length" INTEGER   NOT NULL,
    "beam" INTEGER   NOT NULL,
    "draft" INTEGER   NOT NULL,
    "height" INTEGER   NOT NULL,
    "boat_image" INTEGER   NOT NULL,
    "enable_rafting" BOOLEAN   NOT NULL,
    "harbor_name" INTEGER   NOT NULL,
    "yacht_club_name" INTEGER   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_boaters_boat" PRIMARY KEY (
        "boaters_boat_id"
     )
);

CREATE TABLE "boaters_boat_harbors" (
    "boaters_boat_harbor_id" INTEGER   NOT NULL,
    "boaters_boat_id" INTEGER   NOT NULL,
    "harbor_id" INTEGER   NOT NULL,
    "harbor_name" VARCHAR(60)   NOT NULL,
    "address" VARCHAR(60)   NOT NULL,
    "city" VARCHAR(60)   NOT NULL,
    "state" VARCHAR(60)   NOT NULL,
    "zip" INTEGER   NOT NULL,
    "latitude" DEC   NOT NULL,
    "longitude" DEC   NOT NULL,
    "number_of_slips" INTEGER   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_boaters_boat_harbors" PRIMARY KEY (
        "boaters_boat_harbor_id"
     )
);

CREATE TABLE "companies" (
    "company_id" SERIAL   NOT NULL,
    "company_name" VARCHAR(60)   NOT NULL,
    "email" VARCHAR(60)   NOT NULL,
    "phone_number" NUMERIC   NOT NULL,
    "website" VARCHAR(60)   NOT NULL,
    "boater_id" INTEGER   NOT NULL,
    "address" VARCHAR(60)   NOT NULL,
    "city" VARCHAR(60)   NOT NULL,
    "state" VARCHAR(60)   NOT NULL,
    "zip" INTEGER   NOT NULL,
    "latitude" DEC   NOT NULL,
    "longitude" DEC   NOT NULL,
    "number_of_slips" NUMERIC   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_companies" PRIMARY KEY (
        "company_id"
     )
);

CREATE TABLE "companies_harbors" (
    "companies_harbor_id" INTEGER   NOT NULL,
    "company_id" INTEGER   NOT NULL,
    "harbor_id" INTEGER   NOT NULL,
    "harbor_name" VARCHAR(60)   NOT NULL,
    "address" VARCHAR(60)   NOT NULL,
    "city" VARCHAR(60)   NOT NULL,
    "state" VARCHAR(60)   NOT NULL,
    "zip" INTEGER   NOT NULL,
    "latitude" DEC   NOT NULL,
    "longitude" DEC   NOT NULL,
    "number_of_slips" NUMERIC   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_companies_harbors" PRIMARY KEY (
        "companies_harbor_id"
     )
);

CREATE TABLE "companies_docks" (
    "companies_dock_id" INTEGER   NOT NULL,
    "company_id" INTEGER   NOT NULL,
    "dock_id" INTEGER   NOT NULL,
    "dock_name" VARCHAR(60)   NOT NULL,
    "latitude" DEC   NOT NULL,
    "longitude" DEC   NOT NULL,
    "dock_length" INTEGER   NOT NULL,
    "dock_beam" INTEGER   NOT NULL,
    "bridges_name" VARCHAR(60)   NOT NULL,
    "amenity_name" VARCHAR(60)   NOT NULL,
    "restaurant_name" VARCHAR(60)   NOT NULL,
    "event_name" VARCHAR(60)   NOT NULL,
    "on_the_go_id" INTEGER   NOT NULL,
    "active" BOOLEAN   NOT NULL,
    CONSTRAINT "pk_companies_docks" PRIMARY KEY (
        "companies_dock_id"
     )
);

CREATE TABLE "preference" (
    "boater_id" INTEGER   NOT NULL,
    "dock_name" VARCHAR(60)   NOT NULL,
    "arrival_date" DATE   NOT NULL,
    "departure_date" DATE   NOT NULL,
    "arrival_time" DATE   NOT NULL,
    "departure_time" DATE   NOT NULL,
    "docking_time" DATE   NOT NULL,
    "push_off_time" DATE   NOT NULL,
    "amenity_name" VARCHAR(60)   NOT NULL,
    "event_name" VARCHAR(60)   NOT NULL,
    "high_temp" INTEGER   NOT NULL,
    "low_temp" INTEGER   NOT NULL,
    "sun" INTEGER   NOT NULL,
    "cloud" INTEGER   NOT NULL,
    "wind" INTEGER   NOT NULL,
    "rain" INTEGER   NOT NULL,
    "time_of_day" DATE   NOT NULL,
    "active" BOOLEAN   NOT NULL
);

ALTER TABLE "bridges_docks" ADD CONSTRAINT "fk_bridges_docks_dock_id" FOREIGN KEY("dock_id")
REFERENCES "docks" ("dock_id");

ALTER TABLE "bridges_docks" ADD CONSTRAINT "fk_bridges_docks_bridge_id" FOREIGN KEY("bridge_id")
REFERENCES "bridges" ("bridge_id");

ALTER TABLE "amenities_docks" ADD CONSTRAINT "fk_amenities_docks_dock_id" FOREIGN KEY("dock_id")
REFERENCES "docks" ("dock_id");

ALTER TABLE "amenities_docks" ADD CONSTRAINT "fk_amenities_docks_amenity_id" FOREIGN KEY("amenity_id")
REFERENCES "amenities" ("amenity_id");

ALTER TABLE "restaurants_docks" ADD CONSTRAINT "fk_restaurants_docks_dock_id" FOREIGN KEY("dock_id")
REFERENCES "docks" ("dock_id");

ALTER TABLE "restaurants_docks" ADD CONSTRAINT "fk_restaurants_docks_restaurant_id" FOREIGN KEY("restaurant_id")
REFERENCES "restaurants" ("restaurant_id");

ALTER TABLE "events_docks" ADD CONSTRAINT "fk_events_docks_dock_id" FOREIGN KEY("dock_id")
REFERENCES "docks" ("dock_id");

ALTER TABLE "events_docks" ADD CONSTRAINT "fk_events_docks_event_id" FOREIGN KEY("event_id")
REFERENCES "events" ("event_id");

ALTER TABLE "boatUS" ADD CONSTRAINT "fk_boatUS_boater_id" FOREIGN KEY("boater_id")
REFERENCES "boater" ("boater_id");

ALTER TABLE "safe_harbor" ADD CONSTRAINT "fk_safe_harbor_boater_id" FOREIGN KEY("boater_id")
REFERENCES "boater" ("boater_id");

ALTER TABLE "registration" ADD CONSTRAINT "fk_registration_boater_id" FOREIGN KEY("boater_id")
REFERENCES "boater" ("boater_id");

ALTER TABLE "insurance" ADD CONSTRAINT "fk_insurance_boater_id" FOREIGN KEY("boater_id")
REFERENCES "boater" ("boater_id");

ALTER TABLE "boaters_boat" ADD CONSTRAINT "fk_boaters_boat_boater_id" FOREIGN KEY("boater_id")
REFERENCES "boater" ("boater_id");

ALTER TABLE "boaters_boat" ADD CONSTRAINT "fk_boaters_boat_boat_id" FOREIGN KEY("boat_id")
REFERENCES "boats" ("boat_id");

ALTER TABLE "boaters_boat_harbors" ADD CONSTRAINT "fk_boaters_boat_harbors_boaters_boat_id" FOREIGN KEY("boaters_boat_id")
REFERENCES "boaters_boat" ("boaters_boat_id");

ALTER TABLE "boaters_boat_harbors" ADD CONSTRAINT "fk_boaters_boat_harbors_harbor_id" FOREIGN KEY("harbor_id")
REFERENCES "harbors" ("harbor_id");

ALTER TABLE "companies_harbors" ADD CONSTRAINT "fk_companies_harbors_company_id" FOREIGN KEY("company_id")
REFERENCES "companies" ("company_id");

ALTER TABLE "companies_harbors" ADD CONSTRAINT "fk_companies_harbors_harbor_id" FOREIGN KEY("harbor_id")
REFERENCES "harbors" ("harbor_id");

ALTER TABLE "companies_docks" ADD CONSTRAINT "fk_companies_docks_company_id" FOREIGN KEY("company_id")
REFERENCES "companies" ("company_id");

ALTER TABLE "companies_docks" ADD CONSTRAINT "fk_companies_docks_dock_id" FOREIGN KEY("dock_id")
REFERENCES "docks" ("dock_id");

ALTER TABLE "preference" ADD CONSTRAINT "fk_preference_boater_id" FOREIGN KEY("boater_id")
REFERENCES "boater" ("boater_id");

