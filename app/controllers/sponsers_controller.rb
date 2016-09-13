class SponsersController < ApplicationController

  def index
    sponsers = Sponser.all
    render json: sponsers
  end

  def show
    sponser = Sponser.find( params[ :id ])
    render json: sponser
  end

end