def guessthesimplenumber
  puts "Welcome to Guess The Simple Number!"
  puts "Select difficulty!"
  puts "(1-10)"
  input = gets.chomp
    if input.to_i == 1
      answer = rand(0-10) #0-10
    elsif input.to_i == 2
      answer = rand(0-15) #0-15
    elsif input.to_i == 3
      answer = rand(0-20) #0-20
    elsif input.to_i == 4
      answer = rand(0-25) #0-25
    elsif input.to_i == 5
      answer = rand(0-30) #0-30
    elsif input.to_i == 6
      answer = rand(0-35) #0-35
    elsif input.to_i == 7
      answer = rand(0-40) #0-40
    elsif input.to_i == 8
      answer = rand(0-45) #0-45
    elsif input.to_i == 9
      answer = rand(0-50) #0-50
    elsif input.to_i == 10
      answer = rand(0-100) #0-100
    elsif input != (1-10)
      puts "???"
    end
    puts "Answer: #{answer}"
  end
guessthesimplenumber
