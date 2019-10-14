require 'pry'
require_relative 'song'

class Artist 

attr_reader :name
@@all = []
 
def initialize(name)
 @name = name
 @@all << self
end

def new_song(name, genre)
  Song.new(name, genre)
end


def self.all
    @@all
end

def songs
Song.all.select do |song|
    song.artist == self
end
end

def genres
self.songs.map do |songs|
    songs.artist
end
end

end