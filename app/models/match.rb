class Match < ActiveRecord::Base
  validates :playing_as, :playing_against, presence: true
  has_many :notes
  belongs_to :user

def characters
  array = []
  array << Character.find(self.playing_as)
  array <<Character.find(self.playing_against)
  array
end


end
