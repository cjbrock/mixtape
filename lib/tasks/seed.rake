desc "Create a bunch of seed data for artists and songs"
  task :seed_everything => [:environment, 'db:drop', 'db:create', 'db:migrate'] do

   # 7. 2 are shared.

    michael=Artist.create(name: "Michael Jackson")
    michael.songs <<["Beat It", "Thriller", "Heal the World", "Rock With You", "Black or White"].collect do |song_name|
      Song.create :name => song_name
    end

    bruno=Artist.create(name: "Bruno Mars")
    bruno.songs <<["Just the Way You Are", "Grenade", "Marry You"].collect do |song_name|
      Song.create :name => song_name
    end

    gwen=Artist.create(name: "Gwen Stefani")
    gwen.songs <<["Hollaback Girl", "Harajuku Girls", "Long Way to Go"].collect do |song_name|
      Song.create :name => song_name
    end
    puts "Artists and Songs Created"

    best=Album.create(name: "Best of MJ")
    best.songs << michael.songs

    doowops=Album.create(name: "doo-wops and hooligans")
    doowops.songs << bruno.songs

    love=Album.create(name: "Love.Angel.Music.Baby")
    love.songs = gwen.songs
    puts "Albums Created"

    g=Genre.create(genre: "Pop")
    h=Genre.create(genre: "Rap")
    i=Genre.create(genre: "Hip-Hop")
    j=Genre.create(genre: "R&B")
    k=Genre.create(genre: "Dance")
    puts "Genres Created"

    corinna = User.create(name: "Corinna")
    favorites = Mixtape.create(name: "Corinna's Favorites")
    corinna.mixtapes << favorites
    favorites.songs << bruno.songs

    party = Mixtape.create(name: "Dance Party")
    corinna.mixtapes << party
    party.songs << love.songs

    sappy = Mixtape.create(name: "Sappy Stuff")
    corinna.mixtapes << sappy
    favorites.songs << doowops.songs

    robert = User.create(name: "Robert")
    bad = Mixtape.create(name: "Robert's Music Sucks")
    robert.mixtapes << bad
    puts "Users and Mixtapes created"

end