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

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

# def number_check
#    self.to_i.to_s == self
# end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  if songs.include?(song_choice)
     puts "Playing #{song_choice}"
  elsif (1..songs.length).include?(song_choice.to_i)
      puts "Playing #{songs[song_choice.to_i-1]}"
  else
      puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_input = nil
  until user_input == "exit"
  puts "Please enter a command:"
  user_input = gets.chomp
  if user_input == "help"
    elsif user_input == "list"
      list(songs)
    elsif user_input == "play"
      play(songs)
    elsif user_input == "exit"
      exit_jukebox
      break
    end
  end
end
