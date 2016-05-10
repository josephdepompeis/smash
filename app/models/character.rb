class Character < ActiveRecord::Base
  has_many :ground_moves
  has_many :grabs



  def playing_as
    Match.where(playing_as: self.id)
  end

  def playing_against
    Match.where(playing_against: self.id)
  end


end
