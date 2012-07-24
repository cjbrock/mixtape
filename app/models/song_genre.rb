class SongGenre < ActiveRecord::Base
  attr_accessible :genre_id, :song_id, :genre_name

  belongs_to :genre
  belongs_to :song

  delegate :name, :to => :genre, :prefix => true, :allow_nil => true

    def genre_name=(str)
    proposed_genre = Genre.find_or_create_by_name(str.strip.downcase) if str.present?
    if proposed_genre
      existing_genres = SongGenre.where(:genre_id => proposed_genre.id, :song_id => self.song_id)
      return unless existing_genres.blank?
      self.genre = proposed_genre
    end
  end
end


