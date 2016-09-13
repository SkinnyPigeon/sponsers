class PlayersController < ApplicationController

  def index
    players = Player.all
    render json: players.as_json( { include: :sponsers } )
  end

  def show
    player = Player.find( params[ :id ])
    render json: player.as_json( { include: :sponsers } )
  end

  def create
    Player.create( name: params[ :name ] )
  end

end