TRUNCATE TABLE SEASONS;
TRUNCATE TABLE TRIBES;
TRUNCATE TABLE PLAYERS;

ALTER SEQUENCE seasons_id_seq RESTART WITH 1;
ALTER SEQUENCE tribes_id_seq RESTART WITH 1;
ALTER SEQUENCE players_id_seq RESTART WITH 1;

INSERT INTO seasons(number, name, location, winner) VALUES (1, 'Borneo', 'Pulau Tiga, Malaysia', 'Richard Hatch')

INSERT INTO tribes(name, season_id) VALUES ('Tagi', 1)
INSERT INTO tribes(name, season_id) VALUES ('Pagong', 1)

INSERT INTO players(name, placement, tribe_id) VALUES ('Richard Hatch', 'Winner', 1)
INSERT INTO players(name, placement, tribe_id) VALUES ('Kelly Wiglesworth', 'Runner-up', 1)
INSERT INTO players(name, placement, tribe_id) VALUES ('Rudy Boesch', 'Third', 1)
INSERT INTO players(name, placement, tribe_id) VALUES ('Susan Hawk', 'Fourth', 1)
INSERT INTO players(name, placement, tribe_id) VALUES ('Sean Kenniff', 'Fifth', 1)
INSERT INTO players(name, placement, tribe_id) VALUES ('Colleen Haskell', 'Sixth', 2)
INSERT INTO players(name, placement, tribe_id) VALUES ('Gervase Peterson', 'Seventh', 2)
INSERT INTO players(name, placement, tribe_id) VALUES ('Jenna Lewis', 'Eighth', 2)
INSERT INTO players(name, placement, tribe_id) VALUES ('Greg Buis', 'Ninth', 2)
INSERT INTO players(name, placement, tribe_id) VALUES ('Gretchen Cordy', 'Tenth', 2)
INSERT INTO players(name, placement, tribe_id) VALUES ('Joel Klug', 'Eleventh', 2)
INSERT INTO players(name, placement, tribe_id) VALUES ('Dirk Been', 'Twelvth', 1)
INSERT INTO players(name, placement, tribe_id) VALUES ('Ramona Gray', 'Thirteenth', 2)
INSERT INTO players(name, placement, tribe_id) VALUES ('Stacey Stillman', 'Fourteenth', 1)
INSERT INTO players(name, placement, tribe_id) VALUES ('B.B. Andersen', 'Fifteenth', 2)
INSERT INTO players(name, placement, tribe_id) VALUES ('Sonja Christopher', 'Sixteenth', 1)