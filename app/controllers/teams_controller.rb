class TeamsController < ApplicationController

  def index
    teams = Team.all
    render json: teams.as_json({
      :include => {
        :players => {
          :include => {
            :sponsers => {
              :only => :name
            }
          }
        }
      }
    })
  end

  def show
    team = Team.find( params[ :id] )
    render json: team.as_json( { include: :players } )
  end

  def create
    Team.create( name: params[ :name ], location: params[ :location ] )
  end

end