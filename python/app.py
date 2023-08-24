from flask import Flask, request, jsonify
from peewee import *
from playhouse.shortcuts import model_to_dict , dict_to_model

db = PostgresqlDatabase('survivor', user='Admin', password='', host='localhost', port=5432)

class BaseModel(Model):
  class Meta:
    database = db

class Season(BaseModel):
  number = IntegerField()
  name = CharField()
  location = CharField()
  filming_start = DateField()
  filming_end = DateField()
  airing_start = DateField()
  airing_end = DateField()
  winner = CharField()

class Tribe(BaseModel):
  name = CharField()
  season_id = IntegerField()

class Player(BaseModel):
  name = CharField()
  age_during_game = IntegerField()
  placement = CharField()
  tribe_id = IntegerField()

db.connect()

app = Flask(__name__)

@app.route('/season', methods=['GET','POST'])
@app.route('/season/<id>', methods=['GET','PUT','DELETE'])
def season_endpoint(id=None):
  if request.method == 'GET':    
    if id:
      return jsonify(model_to_dict(Season.get(Season.id == id)))
    else:
      season_list = []
      for season in Season.select():
        season_list.append(model_to_dict(season))
      return jsonify(season_list)

  if request.method == 'PUT':
    body = request.get_json()
    Season.update(body).where(Season.id == id).execute()
    return f'Season {id} has been updated.'

  if request.method == 'POST':
    new_season = dict_to_model(Season, request.get_json())
    new_season.save()
    return jsonify({"success": True})
  
  if request.method == 'DELETE':
    Season.delete().where(Season.id == id).execute()
    return f'Season {id} has been deleted.'

@app.route('/tribe', methods=['GET','POST'])
@app.route('/tribe/<id>', methods=['GET','PUT','DELETE'])
def tribe_endpoint(id=None):
  if request.method == 'GET':    
    if id:
      return jsonify(model_to_dict(Tribe.get(Tribe.id == id)))
    else:
      tribe_list = []
      for tribe in Tribe.select():
        tribe_list.append(model_to_dict(tribe))
      return jsonify(tribe_list)

  if request.method == 'PUT':
    body = request.get_json()
    Tribe.update(body).where(Tribe.id == id).execute()
    return f'Tribe {id} has been updated.'

  if request.method == 'POST':
    new_tribe = dict_to_model(Tribe, request.get_json())
    new_tribe.save()
    return jsonify({"success": True})
  
  if request.method == 'DELETE':
    Tribe.delete().where(Tribe.id == id).execute()
    return f'Tribe {id} has been deleted.'

@app.route('/player', methods=['GET','POST'])
@app.route('/player/<id>', methods=['GET','PUT','DELETE'])
def player_endpoint(id=None):
  if request.method == 'GET':    
    if id:
      return jsonify(model_to_dict(Player.get(Player.id == id)))
    else:
      player_list = []
      for player in Player.select():
        player_list.append(model_to_dict(player))
      return jsonify(player_list)

  if request.method == 'PUT':
    body = request.get_json()
    Player.update(body).where(Player.id == id).execute()
    return f'Player {id} has been updated.'

  if request.method == 'POST':
    new_player = dict_to_model(Player, request.get_json())
    new_player.save()
    return jsonify({"success": True})
  
  if request.method == 'DELETE':
    Player.delete().where(Player.id == id).execute()
    return f'Player {id} has been deleted.'

app.run(debug = True, port = 5050)