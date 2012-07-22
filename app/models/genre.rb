class Genre < ActiveRecord::Base
  attr_accessible :genre

  has_many :song_genres
  has_namy :songs, :through => :song_genres
end
