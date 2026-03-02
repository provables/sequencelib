BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "declaration" (
	"module"	TEXT NOT NULL,
	"name"	TEXT NOT NULL,
	"computable"	INTEGER NOT NULL,
	"tag"	INTEGER NOT NULL UNIQUE,
	"declaration_id"	INTEGER NOT NULL,
	"sequence_id"	INTEGER NOT NULL,
	PRIMARY KEY("declaration_id"),
	UNIQUE("module","name"),
	FOREIGN KEY("sequence_id") REFERENCES "sequence"("sequence_id")
);
CREATE TABLE IF NOT EXISTS "keyword" (
	"keyword_id"	INTEGER NOT NULL,
	"keyword"	TEXT NOT NULL,
	"description"	TEXT,
	"type"	INTEGER NOT NULL DEFAULT 0,
	PRIMARY KEY("keyword_id")
);
CREATE TABLE IF NOT EXISTS "sequence" (
	"tag"	INTEGER NOT NULL UNIQUE,
	"description"	TEXT NOT NULL,
	"offset"	INTEGER NOT NULL,
	"codomain"	INTEGER NOT NULL DEFAULT 0,
	"sequence_id"	INTEGER NOT NULL,
	PRIMARY KEY("sequence_id")
);
CREATE TABLE IF NOT EXISTS "sequence_keyword" (
	"sequence_id"	INTEGER NOT NULL,
	"keyword_id"	INTEGER NOT NULL,
	FOREIGN KEY("keyword_id") REFERENCES "keyword"("keyword_id"),
	FOREIGN KEY("sequence_id") REFERENCES "sequence"("sequence_id")
);
CREATE TABLE IF NOT EXISTS "sequence_value" (
	"sequence_id"	INTEGER NOT NULL,
	"index"	INTEGER NOT NULL,
	"value"	INTEGER NOT NULL,
	FOREIGN KEY("sequence_id") REFERENCES "sequence"("sequence_id")
);
CREATE TABLE IF NOT EXISTS "theorem_equivalence" (
	"declaration_left_id"	INTEGER NOT NULL,
	"declaration_right_id"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"module"	TEXT NOT NULL,
	FOREIGN KEY("declaration_left_id") REFERENCES "declaration"("declaration_id"),
	FOREIGN KEY("declaration_right_id") REFERENCES "declaration"("declaration_id")
);
CREATE TABLE IF NOT EXISTS "theorem_value" (
	"declaration_id"	INTEGER NOT NULL,
	"index"	INTEGER NOT NULL,
	"value"	INTEGER NOT NULL,
	"module"	TEXT NOT NULL,
	"name"	TEXT NOT NULL,
	FOREIGN KEY("declaration_id") REFERENCES "declaration"("declaration_id")
);
COMMIT;
