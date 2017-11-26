require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(song_name, artist, genre)
    @@count +=1
    @@genres << genre
    @@artists << artist

    @name = song_name
    @artist = artist
    @genre = genre
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

  def self.histogram(class_var)
    count = {}
    histo_unique = class_var.uniq
    histo_unique.each do |his|
      count[his] = class_var.count(his)
    end
    count
  end

  def self.genre_count
    histogram(@@genres)
  end

  def self.artist_count
    histogram(@@artists)
  end


end
