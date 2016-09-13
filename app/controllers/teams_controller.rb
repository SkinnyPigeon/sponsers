class TeamsController < ApplicationController

  def give
    return { name: "steve" }
  end

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

end