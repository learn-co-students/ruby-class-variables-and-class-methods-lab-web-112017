require 'pry'
class Song

  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @g_hash = {}
    @@genres.each do |genre|
      @g_hash[genre] += 1 if @g_hash[genre] != nil
      @g_hash[genre] ||= 1
    end
    @g_hash
  end

  def self.artist_count
    @a_hash = {}
    @@artists.each do |artist|
      @a_hash[artist] += 1 if @a_hash[artist] != nil
      @a_hash[artist] ||= 1
    end
    @a_hash
  end


end
