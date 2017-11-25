class Song
  @@count = 0
  @@artists = []
  @@genres = []

attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre

    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres = @@genres.uniq
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genre_count
    @@genres.inject(Hash.new(0)) { |total, genre| total[genre] += 1 ;total}
  end

  def self.artist_count
    @@artists.group_by(&:itself).map{|name, num| [name, num.count]}.to_h
  end
end
