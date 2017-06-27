CREATE TABLE todo (
  "id" SERIAL PRIMARY KEY,
  "title" VARCHAR(255) NOT NULL,
  "details" VARCHAR(max) NOT NULL,
  "priority" INTEGER NOT NULL DEFAULT '1',
  "created_at" DATETIME NOT NULL,
  "completed_at" DATETIME
);

INSERT INTO todo (title, priority, created_at, completed_at ) VALUES ('wash_dishes', 1,'2017-6-26 12:05:00',NULL);
INSERT INTO todo (title, priority, created_at, completed_at) VALUES ('vacuum', 2, '2017-6-26 12:05:00', '2017-6-27 12:05:00');
INSERT INTO todo (title, priority, created_at, completed_at) VALUES ('dust', 3, '2017-6-25 12:05:00', NULL);
INSERT INTO todo (title, priority, created_at, completed_at) VALUES ('mop', 4, '2017-6-24 12:05:00', NULL);
INSERT INTO todo (title, priority, created_at, completed_at) VALUES ('sweep', 5, '2017-5-01 12:05:00', NULL);

SELECT * FROM todo WHERE completed_at = NULL;
SELECT * FROM todo WHERE priority > 1;

UPDATE todo SET completed_at = '2017-06-27 12:10:00' WHERE id = 1;

DELETE FROM todo WHERE completed_at IS NOT NULL;
