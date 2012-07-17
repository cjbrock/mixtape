class AddArtistsToSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :artist_name

    add_column :songs, :artist_id, :integer
  end
end
