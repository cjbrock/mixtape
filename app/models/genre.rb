class Genre < ActiveRecord::Base
  attr_accessible :name

  has_many :song_genres
  has_namy :songs, :through => :song_genres

  validates_uniqueness_of :name
  validates :name, :length => { :minimun => 2}
end
