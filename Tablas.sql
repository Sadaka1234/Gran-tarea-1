CREATE TABLE  "USUARIO" (
  "EMAIL" VARCHAR2(255) NOT NULL PRIMARY KEY,
	"RUN" NUMBER(7) NOT NULL UNIQUE,
	"PASSWORD" VARCHAR2(31) NOT NULL,
	"NOMBRE" VARCHAR2(127) NOT NULL,
	"ROL" NUMBER(8) UNIQUE,
	"ESTILO" NUMBER(1),
  )


CREATE TABLE "CONTENIDOS" (
  "ID" NUMBER(10) NOT NULL PRIMARY KEY,
  "RELEVANCIA_TIPOA" NUMBER(2) NOT NULL,
  "RELEVANCIA_TIPOB" NUMBER(2) NOT NULL,
  "RELEVANCIA_TIPOC" NUMBER(2) NOT NULL,
  "RELEVANCIA_TIPOD" NUMBER(2) NOT NULL,
  "COMENTARIO" VARCHAR2(255),
  "TITULO" VARCHAR2(255),
  "RTF" CLOB,
)



CREATE TABLE "ASIGNATURAS"(
  "ID" NUMBER(10) NOT NULL PRIMARY KEY,
  "SIGLA" CHAR(6) NOT NULL,
  "SEMESTRE" NUMBER(1) NOT NULL,
  "ANIO" NUMBER(4) NOT NULL,
  "NOMBRE" VARCHAR2(255) NOT NULL,
  "SEDE" CHAR(2) NOT NULL,
)

CREATE TABLE "TAG" (
  "ID" NUMBER(10) NOT NULL PRIMARY KEY,
  "NOMBRE" VARCHAR2(63) NOT NULL UNIQUE,
)

CREATE TABLE "MENSAJE" (
 "ID" NUMBER(10) NOT NULL PRIMARY KEY,
 "ASUNTO" VARCHAR2(255) NOT NULL,
 "MENSAJE" CLOB,
 "FECHA" DATE,
 "REMITENTE_EMAIL" FOREIGN KEY  REFERENCES MENSAJE_RECEPTOR("USUARIO_EMAIL"),
)
