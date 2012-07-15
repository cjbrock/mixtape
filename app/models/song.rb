class Song < ActiveRecord::Base
  attr_accessor :play_count
  attr_accessible :name, :album_name, :artist_name, :play_count
end
