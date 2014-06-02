# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode



# Initial Solution
class Song
@@songs={}
@@song=@song
@@artist=@artist
@@play=false
	def initialize(song, artist)
       @@songs[song]=artist 
	   @song=song
	   @@song=song
       @artist=artist
       @@artist=artist
	end

	def play_with_puts
		puts "Playing: - #{@song} - By: #{@artist}"
		@@play=true
	end	

	def play
		@@play=true
	end

	def stop
		@@play=false
	end

	def all_songs
	   return @@songs
	end

	def song
		return @song
	end

	def artist
		return @artist
	end

end



class Playlist < Song 
	
@@title={}
@@song_title=[]
@@song_artist=[]
@@titleArray=[]
@@songArray=[]


	def initialize(*titles)
		@@titleArray<<titles
    	@@titleArray.each do |array|
    	 	array.each do |single|
    	 	   @@songArray<< single
    	 	end
    	 end

       titles.each do |hash|
       	@@title[hash.song]= hash.artist
       end
       @@song_title=@@title.keys
       @@song_artist=@@title.values
       
	end

	def add(*title)
        @@titleArray<<title
        @@titleArray.each do |array|
    	 	array.each do |single|
    	 	   @@songArray<< single
    	 	end
    	 end

		title.each do |hash|
       	@@title[hash.song]= hash.artist
       	puts "-#{hash.song}- By: #{hash.artist} - has been added to your playlist"
       end
	end

	def remove(track)
        if @@songArray.include?(track)
        	@@songArray.delete(track)
			@@title.delete(track.song)
        	puts "#{@@title.length} songs left"
        end
	end

	def play_all
		@@title.each_with_index do |(keys, values), index|
			index=index+1
			puts "#{index})Playing: -#{keys}- By: #{values}"
		end
		@@songArray.each{|song_in_playlist| song_in_playlist.play} #the entire reason I made song Array!
	end


	def num_of_tracks
	    return "#{@@title.length} songs in your playlist" 
	end


	def display
		@@title.each_with_index do |(keys, values), index|
			index=index+1
			puts "#{Playlist} (#{index}): -#{keys}- By: #{values}"
        end
    end

	def includes?(track)
		if @@title.keys.include?(track.song)
			true
		else
			false
		end
	end

end


# Refactored Solution






# # DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == "5 songs in your playlist"
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# # Reflection 
# This challenge took me the longest.  I had a rough time with the value that is returned for a 
# variable after it is called into a class.  After playing with the code, and looking a few things up on the 
# interweb, I was able to figure out what I needed to do.  This challenge still needs to be refactored.
# Just scrolling through this, I see lines of code that are unneeded.