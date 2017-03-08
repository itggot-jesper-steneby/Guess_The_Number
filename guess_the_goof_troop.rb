def game_start
  answer = ran
  max = 100
  min = 0
  running = true
  input = true
  puts "-Greetings user! Welcome to the game! To start playing type yes, to leave type no."
  while running
    input = gets.chomp
    if input == 'no'
      puts "-Aw.."
      running = false
    elsif input == 'yes'
      puts "-Thank you! Now let us begin."
      puts "-Name a number between 1-100"
      input = false
      input2 = gets.chomp
      while input2.to_i != answer
        puts "Wrong"
        if input2.to_i > answer...max
          puts "-Too high..."
        elsif input2.to_i < answer...min
          puts "-Sorry, I didnt quite catch that. As a computer I can only understand numbers :("
        else
          puts "-Too low..."
          input2 = gets.chomp
        end
        end
      end
    end
  end

game_start
