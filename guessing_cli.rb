require "pry"
def run_guessing_game
  # Taking in input from the command line
  # Comparing that input to a random number that has been generated
  # Printing out a statement
  # You guessed the correct number! if the number has been guessed correctly,
  # or The computer guessed <number>. if the number has been guessed incorrectly
  # Allowing the user to exit the program when exit is the input
  input = ""

  while input
    puts "Guess a number between 1 and 6."
    input = gets.chomp
    the_nums = rand(1..6).to_s

    if input == the_nums
      puts "You guessed the correct number!"
    elsif input == "exit"
      puts "Goodbye!"
      break
    else
      puts "The computer guessed #{the_nums}."
    end
  end
end
