  def guess_is_lower(guess, number)
    guess < number
  end

  def guess_is_higher(guess, number)
    guess > number
  end

  def guess_is_correct(guess, number)
    guess == number
  end

  def guess_same_number(guess, array)
    guess == array
  end

guess_arr = []
comp_number = 5 #rand(1..100)
turn = 1

print "I am thinking of a number between 1 and 100. What is your guess: " "\n"

while turn <=5
  user_guess = gets.chomp.to_i
  puts "Turn: #{turn}"
  turn += 1

  if guess_same_number(user_guess, guess_arr.last)
    puts "You've guessed this number before, derp..."
    turn -= 1

  elsif guess_is_lower(user_guess, comp_number)
    puts "Your guess was too low. Try again: "
    guess_arr << user_guess

  elsif guess_is_higher(user_guess, comp_number)
    puts "Your guess was too high. Try again: "
    guess_arr << user_guess

  else
    if turn > 5 && user_guess != comp_number
      puts "Game Over! You Lose!"
      break
    else
      puts "Your guess was DOBA! You win!"
      break
    end
  end
end
