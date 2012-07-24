class MixtapeSong < ActiveRecord::Base
  attr_accessible :mixtape_id, :song_id, :song

  belongs_to :mixtape
  belongs_to :song

  
end
