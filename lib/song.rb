class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @genre_hash = {}
  @artists_hash = {}

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre

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
    @@genres.each do |type|
      if @genre_hash[type]
        @genre_hash[type] += 1
      else
        @genre_hash[type] = 1
      end
    end
    @genre_hash
  end

  def self.artist_count
    @@artists.each do |name|
      if @artists_hash[name]
        @artists_hash[name] += 1
      else
        @artists_hash[name] = 1
      end
    end
    @artists_hash
  end

end
