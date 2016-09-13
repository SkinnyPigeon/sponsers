class Deal < ActiveRecord::Base
  belongs_to :player
  belongs_to :sponser
end
