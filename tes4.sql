CREATE TABLE "estudiantes" (
  "matricula" int PRIMARY KEY NOT NULL,
  "nombre" varchar NOT NULL,
  "apellido" varchar NOT NULL,
  "fecha_nacimiento" date NOT NULL,
  "sexo" char(1) DEFAULT ('M'),
  "correo" varchar UNIQUE NOT NULL,
  "carrera_id" int,
  "telefono" varchar,
  "generacion_id" int
);

CREATE TABLE "carrera" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "nombre" varchar
);

CREATE TABLE "generacion" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "nombre" varchar
);

CREATE TABLE "clases" (
  "id" SERIAL PRIMARY KEY NOT NULL,
  "nombre" varchar
);

CREATE TABLE "grupo" (
  "matricula" int,
  "clase_id" int,
  PRIMARY KEY ("matricula", "clase_id")
);

ALTER TABLE "estudiantes" ADD FOREIGN KEY ("carrera_id") REFERENCES "carrera" ("id");

ALTER TABLE "estudiantes" ADD FOREIGN KEY ("generacion_id") REFERENCES "generacion" ("id");

ALTER TABLE "grupo" ADD FOREIGN KEY ("clase_id") REFERENCES "clases" ("id");

ALTER TABLE "grupo" ADD FOREIGN KEY ("matricula") REFERENCES "estudiantes" ("matricula");


