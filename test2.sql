CREATE TABLE "task" (
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text,
  "create_at" timestamp NOT NULL DEFAULT 'now()',
  "update_at" timestamp NOT NULL DEFAULT 'now()',
  "expiration" timestamp NOT NULL,
  "completed" boolean DEFAULT false,
  "user_id" integer,
  "category_id" integer,
  "status_id" integer
);

CREATE TABLE "user" (
  "id" serial PRIMARY KEY,
  "firstname" varchar NOT NULL,
  "lastname" varchar not null,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar UNIQUE NOT NULL,
  "active" boolean DEFAULT false,
  "create_at" timestamp NOT NULL DEFAULT 'now()',
  "update_at" timestamp NOT NULL DEFAULT 'now()'
);

CREATE TABLE "status" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL,
  "color" char(6) NOT NULL,
  "create_by" integer NOT NULL,
  "create_at" timestamp NOT NULL DEFAULT 'now()',
  "update_at" timestamp NOT NULL DEFAULT 'now()'
);

CREATE TABLE "categorys" (
  "id" serial PRIMARY KEY,
  "name" varchar NOT NULL,
  "create_by" integer NOT NULL,
  "create_at" timestamp NOT NULL DEFAULT 'now()',
  "update_at" timestamp NOT NULL DEFAULT 'now()'
);

ALTER TABLE "task" ADD FOREIGN KEY ("user_id") REFERENCES "user" ("id");

ALTER TABLE "task" ADD FOREIGN KEY ("category_id") REFERENCES "categorys" ("id");

ALTER TABLE "task" ADD FOREIGN KEY ("status_id") REFERENCES "status" ("id");

ALTER TABLE "status" ADD FOREIGN KEY ("create_by") REFERENCES "user" ("id");

ALTER TABLE "categorys" ADD FOREIGN KEY ("create_by") REFERENCES "user" ("id");