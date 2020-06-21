hall = true
study = false
game = true
while game == true do
  user_input = gets.chomp
  if hall == true
    if user_input == 'quit'
      puts 'Bye!'
      game = false
      break
    elsif user_input == 'look'
      puts 'You are standing in a hall with a marble floor. You see a door.'
    elsif user_input == 'north'
      hall = false
      study = true
    end
  elsif study == true
    if user_input == 'quit'
      puts 'Bye!'
      game = false
      break
    elsif user_input == 'look'
      puts 'You are in a warm and cosy study. You see a safe. You see a desk.'
    elsif user_input == 'look at desk'
      puts 'You see a piece of paper that reads, The combination is 2451.'
    elsif user_input == 'south'
      hall = true
      study = false
    elsif user_input == 'enter combination 2451'
      puts 'You see some diamonds in the safe, pick them up and make your escape'
      game = false
      break
    end
  end
end
