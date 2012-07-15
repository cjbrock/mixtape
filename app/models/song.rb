class Song < ActiveRecord::Base
  attr_accessor :play_count
  attr_accessible :name, :album_name, :artist_name, :play_count

  def play
    if @play_count
      @play_count +=1
    else
      @play_count = 1
    end
  end

end
