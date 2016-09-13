class Player < ActiveRecord::Base
  belongs_to :team
  has_many :deals
  has_many :sponsers, through: :deals
end
