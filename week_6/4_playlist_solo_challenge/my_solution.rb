# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode
# Define a class called Song
#Initialize should take the title and artist and assign them
#Should have a play method
# Define a class called Playlist
#Initialize should take the list of songs and store them in an array
#Should have an add function that adds song to array
#Should have a play_all function that iterates through array and puts song

#create a class called Song
# it will take two methods, initialize and play
#initialize will take two parameters, the title and artist and pass these values into the 
#play method and the play method will output a string tell you what song is playing
#create a class called Playlist
#the playlist will have a number of methods,
# the initialize will store the list of songs in an array
#the add method will add a song into the list of songs
#the remove method will remove a song from the list of songs
#the num_of_tracks method will tell you how many songs are in the playlist at the moment
# the includes? method will tell you if the song in question is in the playlist or not and will output true if it is
# the play_all will output all the songs and output multiple strings telling you which song is now playing and by whom
# the display method will output all the songs that are within the array(the playlist)


# Initial Solution
class Song 
	attr_reader :title, :artist  
    def initialize(title, artist)
    	@title = title
    	@artist = artist
	end
	def play
		puts "You are now listening to #{title} by #{artist}"
	end
end 

class Playlist

	attr_reader :songs

	def initialize(*songs)
		@songs = songs
		@song = []
        songs.each {|song| @song << song}
	end

	def add(*songs) 
		songs.each {|song| @song << song}
	end 

	def num_of_tracks
		@song.count  
	end

	def remove(song)
		@song.delete(song)
	end 

	def includes?(song)
	  return true if @song.include?(song)  
	end	

	 def play_all
        puts "Playing all tracks:"
        @songs.each { |song| song.play }
    end

    def display
    	puts "This playlist includes the following songs:"
        @songs.each do |song|
            song.title
            song.artist
            puts "#{song.title} by #{song.artist}"
        end 
    end

end


# Refactored Solution
# not sure how to refactor this or shorten it further 




# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display



# Reflection 
#the error driven steps were fun to debug and it was easy to forget to go back to doing the pseudocode and all the proper steps to working towards the Solution
# the challenge was fun, I learned a lot of new tricks.  I noticed in the boggle board challenge the attr_reader was used in the same way
# as i wanted to use it in the song class with the title and article to be outputted in the string.  This was cool to learn and noticed
#I also noticed they used the splat, the asterisk to represent the many coordinates in the array but putting *coords 
#this was a great thing to implement for this challenge using that on the playlist class especially since some of the methods
#took on so many arguements. 
#it was also cool working with Object oriented programming for this challenge and playing with full objects and their methods
# and seeing how they work.
#overall the challenge wasn't tedious and I enjoyed it a lot.  
# I liked that the stuff I learned in the past challenges had lots of crossover with tricks that would make this 100x cleaner.
