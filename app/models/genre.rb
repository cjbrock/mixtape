class Genre < ActiveRecord::Base
  attr_accessible :genre, :name

  has_many :song_genres, :dependent => :destroy
  has_many :songs, :through => :song_genres

end
