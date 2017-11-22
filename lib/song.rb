class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    artists = []
    @@artists.each do |a|
      artists << a if !artists.include?(a)
    end
    artists
  end

  def self.genres
    genres = []
    @@genres.each do |g|
      genres << g if !genres.include?(g)
    end
    genres
  end

  def self.artist_count
    art_count = {}
    @@artists.each do |a|
      art_count[a] = 0 if !art_count[a]
      art_count[a] += 1
    end
    art_count
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |a|
      genre_count[a] = 0 if !genre_count[a]
      genre_count[a] += 1
    end
    genre_count
  end

end
