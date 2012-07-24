class Album < ActiveRecord::Base
  attr_accessible :name, :genre
  
  has_many :songs, :dependent => :destroy
  has_many :artists, :through => :songs
end
