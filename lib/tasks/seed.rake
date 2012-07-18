desc "Create a bunch of seed data for artists and songs"
task :seed_artists_and_songs => [:environment, :clear_artists_and_songs] do
  puts "Working on it..."
  s=Song.create(:name => "R.E.S.P.E.C.T.")
  s.build_artist(:name =>"Aretha Franklin")
  s.save

  # Build a Song for that Artist
  # build song Natural Woman
  a-Artist.find(3)
  s=a.songs.build(name: "Natural Woman")

  # Manually Create Artist Kanye West
  k=Artist.create(:name => "Kanye West")



  # Push a Song Onto an Artist
  # push a song onto Kanye West
  k=Artist.find(5)
  



  # Create Michael Jackson Artist
  # Make 3 Michael Jackson Songs
  # push all songs by Michael Jackson
  m=Artist.new(:name => "Michael Jackson")


  # Delete one michael song off of michael
  # Remove a Song from Artist

end

task :clear_artists_and_songs => [:environment] do
  puts "Deleting all Artists and Songs...."

  Artist.delete_all
  Song.delete_all
end

#check the page for homework


end
