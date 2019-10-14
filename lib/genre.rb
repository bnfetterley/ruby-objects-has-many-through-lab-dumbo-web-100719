class Genre
@@all = []

attr_reader :artist, :song

def initialize (name)
@name = name
@@all << self
end

def self.all
    @@all
end

def songs 
    Songs.all.select do |song
        song.genre == self
    end

def artists
  self.all.map each do |genre|
    genre.artist
  end

def self.all
    @@all
end 