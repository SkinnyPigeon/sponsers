class Sponser < ActiveRecord::Base
  has_many :deals
  has_many :players, through: :deals
end
