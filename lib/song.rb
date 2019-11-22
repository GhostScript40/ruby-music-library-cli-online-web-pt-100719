class Song
  
  attr_accessor :name
  attr_reader :artist, :genre
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist=(artist) if artist
    self.genre=(genre) if genre
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
    song = self.new(song)
    song.save
    song
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
    
    def genre=(song_genre)
      @genre = song_genre
        genre.songs << self unless genre.songs.include?(self)
    end
    
    def Song.find_by_name(song_name)
      self.all.find {|song| song.name == song_name}
    end
end




