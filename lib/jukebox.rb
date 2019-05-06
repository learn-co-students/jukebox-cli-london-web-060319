songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
	puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(array)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if array.include? user_input
    puts "Playing #{user_input}"
  elsif (1..array.length).to_a.include? user_input.to_i
    puts "Playing #{array[user_input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end


def list(songs)
	songs.each_with_index do |song,index|
      puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
	puts "Goodbye"
end


def run(songs)
	help
	puts "Please enter a command:"
	user_input = gets.chomp
	until user_input == "exit"
		if user_input == "help"
		  help
		  puts "Please enter a command:"
		  user_input = gets.chomp
		elsif user_input == "list"
		  list(songs)
		  puts "Please enter a command:"
		  user_input = gets.chomp
		elsif user_input == "play"
		  play(array)
		  puts "Please enter a command:"
		  user_input = gets.chomp
		elsif user_input == "exit"
		  return exit_jukebox
		else
			"Invalid entry"
		end
	end
	  exit_jukebox
end
