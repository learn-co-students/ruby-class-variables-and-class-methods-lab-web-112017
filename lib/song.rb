require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = 0
  @@artist_count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genres_hash = {}
    @@genres.each do |genre|
      genres_hash[genre] = @@genres.count(genre)
    end
    genres_hash
  end

  def self.artist_count
    artists_hash = {}
    @@artists.each do |artist|
      artists_hash[artist] = @@artists.count(artist)
    end
    artists_hash
  end

end
