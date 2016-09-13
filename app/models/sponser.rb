class Sponser < ActiveRecord::Base
  has_many :players, through: :deals
end
