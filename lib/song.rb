class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def Song.create
    song = Song.new
    song.save
    song
  end
 
  def Song.new_by_name(song_name)
    song = new
    song.name = song_name
    song
  end
  
  def Song.create_by_name(song_name)
    song = create
    song.name = song_name
    song
  end
  
  def Song.find_by_name(song_name)
      self.all.find{|title| title.name == song_name}
  end
  
  def Song.find_or_create_by_name(song_name)
    Song.find_by_name(song_name) || Song.create_by_name(song_name)
  end
  
  def Song.alphabetical
    self.all.sort_by{|title| title.name}
  end
  
  def new_from_filename(filename)
    
  end
  
  def Song.create_from_filename
    
  end
  
  def Song.destroy_all
    @@all = []
  end
end




