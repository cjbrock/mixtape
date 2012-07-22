class Artist < ActiveRecord::Base
  attr_accessible :name
  
  has_many :songs
  has_many :albums, :through => :songs
end
