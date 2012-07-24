class Artist < ActiveRecord::Base
  attr_accessible :name, :genre
  
  has_many :songs, :dependent => :destroy
  has_many :albums, :through => :songs, :uniq => :true

  attr_accessible :name
end
