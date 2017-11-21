class Artist

  @@all = []

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end


  def self.find_or_create_by_name(artist_name)
    if self.all.detect{|artist| artist.name == artist_name} == nil
      artist = Artist.new(artist_name)
    end
  end

  def print_songs
    self.songs.each{|song| puts song.name}
  end
end
