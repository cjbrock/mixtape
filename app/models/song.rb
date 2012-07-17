class Song < ActiveRecord::Base
  attr_accessor :play_count
  attr_accessible :name, :album_name, :artist_name, :play_count
  belongs_to :artist

  def artist_name
    self.artist.name if self.artist
  end

  def artist_name=
    self.artist = Artist.find_or_create_by_name(str)
  end

  def play
    if @play_count
      @play_count +=1
    else
      @play_count = 1
    end
  end

end
