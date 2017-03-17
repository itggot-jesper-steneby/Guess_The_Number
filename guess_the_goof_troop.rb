
def game_start
  running = true
  introduction = true
  puts "-Greetings user!
   -Welcome to the game!
   -To start playing type yes, to leave type no."
  while introduction == true
    input = gets.chomp
    if input == 'no'
      puts "-Aw.."
      running = false
      break
    elsif input == 'help'
      puts "To start playing type yes, to leave type no."
    elsif input == 'yes'
      puts "-Thank you! Now let us begin."
      puts "Select difficulty!"
      puts "(1-10)"
      input = false
      input3 = gets.chomp
      parameters = 0
        if input3.to_i == 1
          answer = rand(0-10)
          parameters = "(0-10)" #0-10
        elsif input3.to_i == 2
          answer = rand(0-15) #0-15
          parameters = "(0-15)"
        elsif input3.to_i == 3
          answer = rand(0-20)
          parameters = "(0-20)" #0-20
        elsif input3.to_i == 4
          answer = rand(0-25)
          parameters = "(0-25)" #0-25
        elsif input3.to_i == 5
          answer = rand(0-30) #0-30
          parameters = "(0-30)"
        elsif input3.to_i == 6
          answer = rand(0-35) #0-35
          parameters = "(0-35)"
        elsif input3.to_i == 7
          answer = rand(0-40) #0-40
          parameters = "(0-40)"
        elsif input3.to_i == 8
          answer = rand(0-45) #0-45
          parameters = "(0-45)"
        elsif input3.to_i == 9
          answer = rand(0-50) #0-50
          parameters = "(0-50)"
        elsif input3.to_i == 10
          answer = rand(0-100) #0-100
          parameters = "(0-100)"
        elsif input3 != (1-10)
          puts "???"
        end
        puts "-Name a number between #{parameters}"
        input = "yes"
        introduction = false
        counter = 0
        number = answer
        while introduction == false
          input2 = gets.chomp
          if input2.to_i == number
            puts "Congratulations!"
            puts "You won!"
            break
          elsif input2.to_i != number
            puts "Wrong"
            counter += 1
            puts "-You have tried #{counter} out of 5 times "
            if counter == 5
              puts "-Game Over"
              puts "The right number was #{number}"
              break
            elsif input2.to_i >= number
              puts "-Too high..."
            elsif input2.to_i <= number
              puts "-Too low..."
            elsif input2 == input2.to_s
              puts "-Excuse me what?"
            end
          end
        end
      end
    end
  end


game_start
