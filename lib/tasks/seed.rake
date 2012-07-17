desc "Create a bunch of seed data for artists and songs"
task :seed_artists_and_songs => [:environment, :clear_artists_and_songs] do
  puts "Working on it..."
  s=Song.create(:name => "R.E.S.P.E.C.T.")
  s.build_artist(:name =>"Aretha Franklin")
  s.save

#check the page for homework


end
