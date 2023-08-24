DROP TABLE IF EXISTS season;
DROP TABLE IF EXISTS tribe;
DROP TABLE IF EXISTS player;

CREATE TABLE season (
  id SERIAL PRIMARY KEY,
  number INTEGER,
  name VARCHAR(255),
  location VARCHAR(255),
  filming_start DATE,
  filming_end DATE,
  airing_start DATE,
  airing_end DATE,
  winner VARCHAR(255)
);

CREATE TABLE tribe (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  season_id INTEGER
);

CREATE TABLE player (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age_during_game INTEGER,
  placement VARCHAR(255),
  tribe_id INTEGER
);