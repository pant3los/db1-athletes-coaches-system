--dimiourgia pinaka gia to pios proponitis proponei pion athliti
CREATE TABLE coaching (
  coache_id int,
  athlete_id int,
  payment int NOT NULL,
  FOREIGN KEY(coache_id) REFERENCES coaches(coache_id),
  FOREIGN KEY(athlete_id) REFERENCES athletes(athlete_id)
);