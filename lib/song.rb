require 'pry'
class Song

@@count = 0
@@genres =[]
@@artists =[]


attr_accessor :name,:artist,:genre

	def initialize(name,artist,genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@artists << artist
		@genre = genre
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

	def self.artist_count
		count_hash = {}
		@@artists.each do |artist|
			if !count_hash.has_key?(artist)
				count_hash["#{artist}"] = 1
			elsif count_hash.has_key?(artist)
				count_hash["#{artist}"] += 1
			end
		end
		count_hash

	end

	def self.genre_count
		count_hash = {}
		@@genres.each do |genre|
			if !count_hash.has_key?(genre)
				count_hash["#{genre}"] = 1
			elsif count_hash.has_key?(genre)
				count_hash["#{genre}"] += 1
			end
		end
		count_hash
	end



end
