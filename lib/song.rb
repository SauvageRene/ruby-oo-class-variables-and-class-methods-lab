class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @@count += 1
        self.name = name
        self.artist = artist
        self.genre = genre
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
        hash = {}
          @@genres.each do |genre|
            if hash[genre]
                hash[genre] += 1
            else
                hash[genre] = 1
            end
        end
        hash
        end
        def self.artist_count
            artists_hash = {}
             @@artists.each do |artist|
                if artists_hash[artist]
                    artists_hash[artist] += 1
                else
                    artists_hash[artist] = 1
                end
            end
            artists_hash
        end

       
end