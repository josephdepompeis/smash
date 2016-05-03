class Character < ActiveRecord::Base
  has_many :ground_moves
  has_many :grabs



end
