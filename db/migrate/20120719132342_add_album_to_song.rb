class AddAlbumToSong < ActiveRecord::Migration
  def change
    

    add_column :songs, :album_id, :integer

    songs.find_each do |s|
      album = Album.find_or_create_by_name(s.album_name.strip)
      s.album = album
      s.save
    end

    remove_column :songs, :album_name
  end
end
