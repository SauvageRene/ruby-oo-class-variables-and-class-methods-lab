class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@genres << self.genre
        @@artists << self.artist
        @@count += 1
    end

    def self.genres
        @@genres.unique
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
        hash = {}
        @@genres.each do |genre|
            if hash[genre]
                hash[genre] += 1
            else
                hash[genre] = 1
            end
        end
        hash # we have to end the do and if statements first befor returning the hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            if hash[artist]
                hash[artist] += 1
            else
                hash[artist] = 1
            end
        end
        hash
    end


end