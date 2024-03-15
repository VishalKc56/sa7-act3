# Initialize player score
score = 0

# Points available in each room
room_points = {1 => 5, 2 => 10, 3 => 15}

puts "Welcome to the Adventure Game!"
puts "You have #{score} points."

loop do
  # Display the options and prompt the player for input
  puts "Choose a room (1-3) to enter or 'exit' to end the game: "
  choice = gets.chomp  # Read player's choice

  # Exit the game if player chooses 'exit'
  if choice == 'exit'
    puts "Game over! You collected a total of #{score} points."
    break
  end

  # Convert the choice to an integer and validate it
  room_number = choice.to_i
  if room_points.key?(room_number)
    # Add the points from the chosen room to the score
    score += room_points[room_number]
    puts "You entered Room #{room_number} and earned #{room_points[room_number]} points."
  else
    puts "Invalid room. Please choose a valid room (1-3) or 'exit'."
  end

  # Show the current score
  puts "You have #{score} points."
end
