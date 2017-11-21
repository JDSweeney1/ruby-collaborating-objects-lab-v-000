class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    artist = data[0]
    song_name = data[1]
    genre = data[2].chop(".mp3")
    song = self.new(song_name)
  end
end
