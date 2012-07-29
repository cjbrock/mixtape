class Album < ActiveRecord::Base
  attr_accessible :name, :genre, :songs_attributes
  
  has_many :songs, :dependent => :destroy
  has_many :artists, :through => :songs
  
  accepts_nested_attributes_for :songs, allow_destroy: true
end
