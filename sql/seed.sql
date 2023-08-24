TRUNCATE TABLE SEASON;
TRUNCATE TABLE TRIBE;
TRUNCATE TABLE PLAYER;

ALTER SEQUENCE season_id_seq RESTART WITH 1;
ALTER SEQUENCE tribe_id_seq RESTART WITH 1;
ALTER SEQUENCE player_id_seq RESTART WITH 1;

INSERT INTO season(number, name, location, filming_start, filming_end, airing_start, airing_end, winner) VALUES (1, 'Borneo', 'Pulau Tiga, Malaysia', '2000-03-03', '2000-04-20', '2000-05-31', '2000-08-23', 'Richard Hatch');

INSERT INTO tribe(name, season_id) VALUES ('Tagi', 1);
INSERT INTO tribe(name, season_id) VALUES ('Pagong', 1);

INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Richard Hatch', 38, 'Winner', 1);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Kelly Wiglesworth', 22, 'Runner-up', 1);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Rudy Boesch', 72, 'Third', 1);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Susan Hawk', 38, 'Fourth', 1);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Sean Kenniff', 30, 'Fifth', 1);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Colleen Haskell', 23, 'Sixth', 2);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Gervase Peterson', 30, 'Seventh', 2);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Jenna Lewis', 22, 'Eighth', 2);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Greg Buis', 24, 'Ninth', 2);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Gretchen Cordy', 38, 'Tenth', 2);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Joel Klug', 27, 'Eleventh', 2);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Dirk Been', 23, 'Twelvth', 1);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Ramona Gray', 29, 'Thirteenth', 2);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Stacey Stillman', 27, 'Fourteenth', 1);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('B.B. Andersen', 64, 'Fifteenth', 2);
INSERT INTO player(name, age_during_game, placement, tribe_id) VALUES ('Sonja Christopher', 63, 'Sixteenth', 1);