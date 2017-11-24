class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@artists_hash = {}
  @@genres_hash = {}
  @@all = {}

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    @@all[name] = [artist,genre]
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

  def self.artist_count
    @@all.each do |person,info| #self.artists
      art_name=info[0]
      if @@artists_hash[art_name] == nil #@@artists_hash[person]
        @@artists_hash[art_name] = 1
      else
        @@artists_hash[art_name] += 1 #self.count
      end
    end
    @@artists_hash
  end

  def self.genre_count
    @@all.each do |person,info| #self.genres
      gen_name=info[1]
      if @@genres_hash[gen_name] == nil
        @@genres_hash[gen_name] = 1
      else
        @@genres_hash[gen_name] += 1 #self.count
      end
    end
    @@genres_hash
  end
end
