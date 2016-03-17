


def guessing_game
  random = rand(1..10)
  guesses = 0

  correct_guess = false
  until correct_guess
    print "Guess a number: "
    number = gets.to_i

    if number == random
      correct_guess = true
    elsif number < random
      puts "#{number} is too low."
    elsif number > random
      puts "#{number} is too high."
    end

    guesses += 1
  end

  puts "Correct guess: #{number}"
  puts "Guesses: #{guesses}"

end

guessing_game
