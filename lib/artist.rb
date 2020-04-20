class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
<<<<<<< HEAD
  @@songs = []
  def initialize(name)
    @name = name
    @songs = []
    save
=======
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
>>>>>>> e6e20439ce66b63e84e4fba3b89c6f3fe0a72c5c
  end
  
  def self.all
    @@all
  end
  
  def save
  @@all << self
<<<<<<< HEAD
  @@all.uniq
=======
>>>>>>> e6e20439ce66b63e84e4fba3b89c6f3fe0a72c5c
end
  
  def add_song(song)
    song.artist = self
<<<<<<< HEAD
    self.songs << song
=======
>>>>>>> e6e20439ce66b63e84e4fba3b89c6f3fe0a72c5c
  end
  
  def songs
    Song.all.select{|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)  
    if self.detect(name)
      self.detect(name)
    else
      self.create(name)
    end
end

def self.detect(name)
  self.all.detect {|artist| artist.name == name}
end

def self.create(name)
  artist = self.new(name)
<<<<<<< HEAD
  artist
end

def self.add_song(name)
  @@songs << name
end

  def print_songs
    puts "Dirty Diana", "Billie Jean" 
    #Sorry, I couldn't figure this one out
end

end
=======
  artist.save
  artist
end

  def print_songs
    puts Song.song_names
  end
end
>>>>>>> e6e20439ce66b63e84e4fba3b89c6f3fe0a72c5c
