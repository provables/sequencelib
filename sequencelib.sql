BEGIN TRANSACTION;
DROP TABLE IF EXISTS "declaration";
CREATE TABLE "declaration" (
	"module"	TEXT NOT NULL,
	"name"	TEXT NOT NULL,
	"computable"	INTEGER NOT NULL,
	"tag"	INTEGER,
	"declaration_id"	INTEGER NOT NULL,
	"sequence_id"	INTEGER NOT NULL,
	PRIMARY KEY("declaration_id"),
	FOREIGN KEY("sequence_id") REFERENCES "sequence"("sequence_id")
);
DROP TABLE IF EXISTS "keyword";
CREATE TABLE "keyword" (
	"keyword_id"	INTEGER NOT NULL,
	"keyword"	TEXT NOT NULL,
	"description"	TEXT,
	PRIMARY KEY("keyword_id")
);
DROP TABLE IF EXISTS "sequence";
CREATE TABLE "sequence" (
	"tag"	INTEGER NOT NULL,
	"description"	TEXT NOT NULL,
	"offset"	INTEGER NOT NULL,
	"codomain"	INTEGER NOT NULL DEFAULT 0,
	"sequence_id"	INTEGER NOT NULL,
	PRIMARY KEY("sequence_id")
);
DROP TABLE IF EXISTS "sequence_keyword";
CREATE TABLE "sequence_keyword" (
	"sequence_id"	INTEGER NOT NULL,
	"keyword_id"	INTEGER NOT NULL,
	FOREIGN KEY("keyword_id") REFERENCES "keyword"("keyword_id"),
	FOREIGN KEY("sequence_id") REFERENCES "sequence"("sequence_id")
);
DROP TABLE IF EXISTS "sequence_value";
CREATE TABLE "sequence_value" (
	"sequence_id"	INTEGER NOT NULL,
	"index"	INTEGER NOT NULL,
	"value"	INTEGER NOT NULL,
	FOREIGN KEY("sequence_id") REFERENCES "sequence"("sequence_id")
);
DROP TABLE IF EXISTS "theorem_equivalence";
CREATE TABLE "theorem_equivalence" (
	"declaration_left_id"	INTEGER NOT NULL,
	"declaration_right_id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"module"	TEXT NOT NULL,
	FOREIGN KEY("declaration_left_id") REFERENCES "declaration"("declaration_id"),
	FOREIGN KEY("declaration_right_id") REFERENCES "declaration"("declaration_id")
);
DROP TABLE IF EXISTS "theorem_value";
CREATE TABLE "theorem_value" (
	"declaration_id"	INTEGER NOT NULL,
	"index"	INTEGER NOT NULL,
	"value"	INTEGER NOT NULL,
	"module"	TEXT NOT NULL,
	"name"	TEXT NOT NULL,
	FOREIGN KEY("declaration_id") REFERENCES "declaration"("declaration_id")
);
COMMIT;
