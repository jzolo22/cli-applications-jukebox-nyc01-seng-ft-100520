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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array)
  i = 0 
  while i < array.length 
    puts "#{i+1}. #{array[i]}"
    i += 1
  end
end

def play(array)
  puts "Please enter a song name or number:"
  valid_number_responses = 1..9
  user_response = gets.strip
  user_response_index = user_response.to_i - 1
  if valid_number_responses.include?(user_response.to_i)
    puts "Playing #{array[user_response_index]}"
  elsif array.include?(user_response)
    array.each do |song_name|
    if song_name == user_response
      puts "Playing #{song_name}"
    end
  end
  else 
    puts"Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(array)
  until exit_jukebox do 
  puts "Please enter a command:"
  command_input = gets.strip
  if command_input == "help"
    help
  elsif command_input == "play"
    play(array)
  elsif command_input == "list"
    list(array)
  elsif command_input == "exit"
    exit_jukebox
  else 
    help
  end
end
end

