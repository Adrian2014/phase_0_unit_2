class Song
    attr_accessor :title, :artist

    def initialize(title, artist) 
        @title = title
        @artist = artist
        playing = false
    end

    def play
        playing  = true
    end
end

class Playlist < Song
    attr_accessor :songs   

    def initialize(*songs)
        @songs = songs    # Ultimately an array of Song objects created on line 65
    end

    def add(*song)
        songs.push(song)
    end

    def num_of_tracks
        songs.length 
    end

    def play
        playing  = true
    end

    def play_all
        songs.each { |song| song.play  }
    end

    def stop
        playing = false
    end

    def display
        puts songs
    end

    def remove(name)
    songs.delete_if{|song| song.title == name}
    end

end


#### Driver Code#### 
 
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 

p my_playlist.num_of_tracks
going_under.play

#p my_playlist.includes?(lying_from_you) == true

 

