DROP TABLE IF EXISTS entries;

CREATE TABLE entries(
  id SERIAL PRIMARY KEY,
  author TEXT,
  photo_url TEXT,
  date_taken DATE
)
