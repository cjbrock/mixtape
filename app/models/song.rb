class Song < ActiveRecord::Base
  attr_accessible :name, :album_name, :album_id, :artist_name, :artist_id, :song_genres_attributes, :genre

  belongs_to :artist
  belongs_to :album

  has_many :song_genres, :dependent => :destroy
  has_many :genres, :through => :song_genres

  has_many :mixtape_songs, :dependent => :destroy
  has_many :mixtapes, :through => :mixtape_songs

  accepts_nested_attributes_for :song_genres
  validate :validate_unique_songs
  
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

  def validate_unique_songs
    validate_uniqueness_of_in_memory(self.song_genres, [:song_id, :genre_id], 'Duplicate genre')
  end

end
