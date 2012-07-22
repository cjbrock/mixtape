desc "Create a bunch of seed data for artists and songs"
task :seed_artists_and_songs => [:environment, :clear_artists_and_songs] do
  puts "Working on it..."
  s=Song.create(name: "R.E.S.P.E.C.T.")
  s.build_artist(name: "Aretha Franklin")
  s.save

  # Build a Song for that Artist
  # build song Natural Woman
  a=Artist.where(name: "Aretha Franklin").first
  s=a.songs.build(name: "Natural Woman")
  s.save

  # Manually Create Artist Kanye West
  k=Artist.create(name: "Kanye West")
  k.save

  # Push a Song Onto an Artist
  # push a song onto Kanye West
  k=Artist.where(name: "Kanye West").first
  s=Song.new(name: "Stronger")
  k.songs<<s



  # Create Michael Jackson Artist
  # Make 3 Michael Jackson Songs
  # push all songs by Michael Jackson
  m=Artist.create(name: "Michael Jackson")
    m.songs <<["Beat It", "Thriller", "Heal the World"].collect do |song_name|
      Song.create :name => song_name
    end

  # Delete one michael song off of michael
  # Remove a Song from Artist
  m=Artist.where(name: "Michael Jackson").first
  d=m.songs.where(name: "Thriller").first
  d.destroy

end

task :clear_artists_and_songs => [:environment] do
  puts "Deleting all Artists and Songs...."

  Artist.delete_all
  Song.delete_all
  Album.delete_all
end

#check the page for homework
