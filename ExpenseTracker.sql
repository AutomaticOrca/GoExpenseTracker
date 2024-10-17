CREATE TABLE "users" (
  "id" serial PRIMARY KEY,
  "username" varchar(255) UNIQUE NOT NULL,
  "email" varchar(255) UNIQUE NOT NULL,
  "password_hash" varchar(255) NOT NULL
);

CREATE TABLE "expenses" (
  "id" serial PRIMARY KEY,
  "user_id" int,
  "amount" numeric NOT NULL,
  "category" varchar(100),
  "description" text,
  "date" date NOT NULL
);

ALTER TABLE "expenses" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
