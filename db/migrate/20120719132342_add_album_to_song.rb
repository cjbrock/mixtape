class AddAlbumToSong < ActiveRecord::Migration
  def change
    remove_column :songs, :album_name

    add_column :songs, :album_id, :integer
  end
end
