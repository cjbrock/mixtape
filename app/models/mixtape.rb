class Mixtape < ActiveRecord::Base
  attr_accessible :name, :mixtape_songs_attributes

  has_many :mixtape_songs
  has_many :songs, :through => :mixtape_songs

  has_many :user_mixtapes
  has_many :users, :through => :user_mixtapes

  accepts_nested_attributes_for :mixtape_songs

  def mixtape_songs_attributes=(attributes)
  end
end
