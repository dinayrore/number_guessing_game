def guess_again
  puts "Try again: "
end

def guess_and_check(guess, check, turn, guess_arr, low_arr, high_arr)
  if guess < check #guess_is_lower
      puts "Turn: #{turn}"
      puts "Your guess was too low."
      low_arr << guess
      guess_arr << guess
  end
  if guess > check #guess_is_higher
      puts "Turn: #{turn}"
      puts "Your guess was too high."
      high_arr << guess
      guess_arr << guess
  end
  true
end

def guess_and_check_close_to_number(guess, check, turn)
  if ((guess - check).abs == 10) && (guess > check) && (guess < 101) #too high but close
    puts "You're within 10..."
  end
  if ((guess - check).abs == 10) && (guess < check) && (guess > 0)
    puts "You're within 10..."
  end
  true
end

def guess_and_check_even_closer_to_number(guess, check, turn)
  if ((guess - check).abs == 5) && (guess > check) && (guess < 101) #too high but close
    puts "You're only 5 above. Getting warmer."
  end
  if ((guess - check).abs == 5) && (guess < check) && (guess > 0)
    puts "You're only 5 below. Try moving up a bit."
  end
  true
end

def guess_and_check_within_one(guess, check, turn)
  if ((guess - check).abs == 1) && (guess > check) && (guess < 101) #too high but close
    puts "You're so close you're on fire!"
  end
  if ((guess - check).abs == 1) && (guess < check) && (guess > 0)
    puts "You're just below the true number!"
  end
  true
end

def guess_wasted(guess, low_arr, high_arr, turn)
  unless low_arr == []
    if guess <= low_arr.max
      puts "Congratulations genius, you just wasted your turn..."
      puts "Your last guess was too low, why go lower?"
    end
  end
  unless high_arr == []
    if guess > high_arr.min
      puts "Congratulations genius, you just wasted your turn..."
      puts "Your last guess was too high, why go higher?"
    end
  end
end

rand_number_arr = [*1..100]
rand_number = rand_number_arr.sample
# p rand_number
turn = 0
guess_arr_low = []
guess_arr_high = []
guess_arr = []

print "I am thinking of a number between 1 and 100. What is your guess: " "\n"

while turn <= 5
  user_guess = gets.chomp.to_i
  turn += 1

  if guess_and_check(user_guess, rand_number, turn, guess_arr, guess_arr_low, guess_arr_high)
    if turn != 1
        guess_wasted(user_guess, guess_arr_low, guess_arr_high, turn)
    end
    guess_and_check_close_to_number(user_guess, rand_number, turn)
    guess_and_check_even_closer_to_number(user_guess, rand_number, turn)
    guess_and_check_within_one(user_guess, rand_number, turn)
    guess_again
  else
    puts "You've guessed this number before, herp derp..."
    guess_again
    turn -= 1
  end
  if turn > 5 && user_guess != rand_number
    puts "Game Over! You Lose!"
    turn += 1
    exit
  elsif user_guess == rand_number
    puts "Your guess was DOBA! You win!"
    puts "Turn: #{turn}"
    exit
  end
end
