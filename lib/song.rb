class Song

@@count = 0
@@artists = []
@@genres = []

attr_accessor :artist, :genre, :name

  def initialize(name, artist, genre)
     @name = name
     @artist = artist
     @genre = genre
     @@count += 1
     @@artists << self.artist
     @@genres << self.genre

  end

  def self.count
      @@count
  end

  def self.artists
      @@artists.uniq
  end

  def self.genres
      @@genres.uniq
  end

  def self.artist_count
      answer = Hash.new(0)
      @@artists.each {|name| answer[name] += 1}
      answer
  end

  def self.genre_count
      answer = Hash.new(0)
      @@genres.each {|type| answer[type] += 1}
      answer
  end

end
