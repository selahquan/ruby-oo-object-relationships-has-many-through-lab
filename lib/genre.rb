class Genre
    @@all= []
    attr_accessor :name, :song
    def initialize(name)
        @name= name
        self.class.all << self
    end
    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end
    def self.all
        @@all
    end
    def artists
        songs.map{|song| song.artist}
    end
end
