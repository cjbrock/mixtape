class Genre < ActiveRecord::Base
  attr_accessible :genre

  has_many :song_genres, :dependent => :destroy
  has_many :songs, :through => :song_genres

  validates_uniqueness_of :genre

end
