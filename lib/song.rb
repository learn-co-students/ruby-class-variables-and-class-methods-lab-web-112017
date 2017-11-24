class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
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

  def self.genre_count
    @@genres.each do |genre_element|
      if !@@genre_count.keys.include?(genre_element)
        @@genre_count[genre_element] = 0
      end
      @@genre_count[genre_element] += 1
    end
    @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist_element|
      if !@@artist_count.keys.include?(artist_element)
        @@artist_count[artist_element] = 0
      end
      @@artist_count[artist_element] += 1
    end
    @@artist_count
  end 

end
