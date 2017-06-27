CREATE TABLE todo (
  "id" SERIAL PRIMARY KEY,
  "title" VARCHAR(255) NOT NULL,
  "details" VARCHAR(max) NOT NULL,
  "priority" INTEGER NOT NULL DEFAULT '1',
  "created_at" DATETIME NOT NULL,
  "completed_at" DATETIME
);

INSERT INTO todo (title, priority, created_at ) VALUES ('wash_dishes', 1, ),
INSERT INTO todo ()
