class Song < ActiveRecord::Base
  attr_accessor :play_count
  attr_accessible :name, :play_count

  belongs_to :artist
  belongs_to :album

  has_many :song_genres
  has_many :genres, :through => :song_genres

  has_many :mixtape_songs
  has_many :mixtapes, :through => :mixtape_songs

  def artist_name
    self.artist.try(:name)
  end

  def artist_name=(str)
    artist = Artist.find_or_create_by_name(str)
    self.artist_id = artist.id
  end

  def album_name
    self.album.try(:name)
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
