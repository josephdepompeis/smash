class Note < ActiveRecord::Base
  belongs_to :match
  validates :match_id, presence: true


end
