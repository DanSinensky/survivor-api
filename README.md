# Survivor API
## Introduction
This API lets you list all of the seasons, tribes, and players of Survivor.

## Data Types
### Season
|Field|Type (SQL)|Type (Python)|Description|
|-----|----------|-------------|-----------|
|number|INTEGER|IntegerField|Season number|
|name|VARCHAR(255)|CharField|Season name|
|location|VARCHAR(255)|CharField|Filming location|
|filming_start|DATE|DateField|Filming start date|
|filming_end|DATE|DateField|Filming end date|
|airing_start|DATE|DateField|US airing start date|
|airing_end|DATE|DateField|US airing end date|
|winner|VARCHAR(255)|CharField|Winner|

### Tribe
|Field|Type (SQL)|Type (Python)|Description|
|-----|----------|-------------|-----------|
|name|VARCHAR(255)|CharField|Tribe name|
|season_id|INTEGER|IntegerField|Season the tribe appeared on|

### Player
|Field|Type (SQL)|Type (Python)|Description|
|-----|----------|-------------|-----------|
|name|VARCHAR(255)|CharField|Player name|
|age_during_game|INTEGER|IntegerField|Player's age while playing|
|placement|VARCHAR(255)|CharField|What place the player came in|
|tribe_id|INTEGER|IntegerField|Tribe the player started on|

## CRUD Routes
### GET
- __*/season*__ - Returns JSON data of all seasons
- __*/season*__ - Returns JSON data of one season by ID
- __*/tribe*__ - Returns JSON data of all tribes
- __*/tribe*__ - Returns JSON data of one tribe by ID
- __*/player*__ - Returns JSON data of all players
- __*/player*__ - Returns JSON data of one player by ID

### POST
- __*/season*__ - Creates a new season
- __*/tribe*__ - Creates a new tribe
- __*/player*__ - Creates a new player

### PUT
- __*/season/\<id\>*__ - Updates a season by id
- __*/tribe/\<id\>*__ - Updates a tribe by id
- __*/player/\<id\>*__ - Updates a player by id

### DELETE
- __*/season/\<id\>*__ - Deletes a season by id
- __*/tribe/\<id\>*__ - Deletes a tribe by id
- __*/player/\<id\>*__ - Deletes a player by id

## Technologies Used
- Python
- PostgreSQL
- Peewee
- Flask

## Installation Guide
In your terminal, type:
```
psql postgress
CREATE DATABASE survivor;
\c survivor
CREATE TABLE season;
CREATE TABLE tribe;
CREATE TABLE player;
```

Clone the directory and cd into it, then in a new terminal, type:
```
pip3 install pipenv
pipenv install
nodemon --exec python3 app.py
```

## Goals
- Add more seasons, tribes, and players
- Add relational table for players on more than one season and tribe
- Add challenges
- Add season simulation