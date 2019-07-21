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
  puts " I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
  "
end

def list(songs)
  songs.each_with_index do |song,index| 
    puts "#{index+1} #{song}"
  end 
end 

def play(songs)
    puts "Please enter a song name or number:"
  song_chosen = gets.chomp
  songs.each_with_index do |song , index|
    if song == song_chosen
      puts "Playing #{song}"
    elsif song == songs[(song_chosen.to_i)-1]
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
help
loop do
    puts "Please enter a command:"
    reponse = gets.chomp
    case  reponse
    when "exit"
      exit_jukebox
      break
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "help"
      help
    else
      help
    end
  end
end


