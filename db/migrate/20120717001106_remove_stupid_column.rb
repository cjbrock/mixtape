class RemoveStupidColumn < ActiveRecord::Migration
  def change
    remove_column :artists, :song_id, :integer
  end

end
