class Song < ActiveRecord::Base
  attr_accessor :play_count
  attr_accessible :name, :album_name, :artist_name, :play_count
  belongs_to :artist, :album

  def artist_name
    self.artist.name if self.artist
  end

  def artist_name=(str)
    artist = Artist.find_or_create_by_name(str)
    self.artist_id = artist.id
  end

  def album_name
    self.album.name if self.album
  end

  def album_name=(str)
    album = Album.find_or_create_by_name(str)
    self.album_id = album.id
  end


  def play
    if @play_count
      @play_count +=1
    else
      @play_count = 1
    end
  end

end
