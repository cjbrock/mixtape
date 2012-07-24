class AddArtistandAlbumtoSong < ActiveRecord::Migration
  def up
    add_column :songs, :artist_name, :string
  end

  def down
  end
end
