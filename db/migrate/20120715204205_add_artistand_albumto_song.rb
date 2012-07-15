class AddArtistandAlbumtoSong < ActiveRecord::Migration
  def up
    add_column :songs, :artist_name, :string
    add_column :songs, :album_name, :string
  end

  def down
  end
end
