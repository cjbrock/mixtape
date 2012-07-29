class Mixtape < ActiveRecord::Base
  attr_accessible :name, :mixtape_songs_attributes, :genre, :users_attributes, :songs_attributes

  has_many :mixtape_songs, :dependent => :destroy
  has_many :songs, :through => :mixtape_songs

  has_many :user_mixtapes, :dependent => :destroy
  has_many :users, :through => :user_mixtapes


  accepts_nested_attributes_for :mixtape_songs
  accepts_nested_attributes_for :users, allow_destroy: true
  accepts_nested_attributes_for :songs, allow_destroy: true

end
