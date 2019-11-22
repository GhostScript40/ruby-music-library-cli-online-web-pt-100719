class Genre
  
  attr_accessor :name
  attr_reader :artists
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    genre = self.new(genre)
    genre.save
    genre
  end
  
  def songs
    @songs
  end
  
  def artists
    @songs.collect {|a| a.artist}.uniq
  end
end