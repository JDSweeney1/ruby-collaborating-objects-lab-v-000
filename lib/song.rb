class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    artist = data[0]
    song = data[1]
    genre = data[2].chop(".mp3")
  end
end
