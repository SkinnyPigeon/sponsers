class DealsController < ApplicationController

  def index
    deals = Deal.all
    render json: deals
  end

  def show
    deal = Deal.find( params[ :id ])
    render json: deal
  end

  def create
    Deal.create( player_id: params[ :player_id ], sponser_id: params[ :sponser_id ], amount: params[ :amount ] )
  end

end