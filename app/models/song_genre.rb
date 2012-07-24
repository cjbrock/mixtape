class SongGenre < ActiveRecord::Base
  attr_accessible :genre_id, :song_id, :genre_name

  belongs_to :genre
  belongs_to :song

  delegate :name, :to => :genre, :prefix => true, :allow_nil => true

  def genre_name
    genre.try(:genre)
  end

  def genre_name=(str)
    self.genre = Genre.find_or_create_by_genre(str) if str.present?
  end

end


