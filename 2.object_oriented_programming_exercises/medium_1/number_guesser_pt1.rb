class GuessingGame
  attr_accessor :num_of_guesses
  attr_reader :random_number

  def initialize
    @num_of_guesses = 7
    @random_number = rand(100)
  end

  def guesses_left_message
    puts "You have #{num_of_guesses} guesses remaining"
  end

  def decrement_guesses
    self.num_of_guesses -= 1
  end

  def player_choice
    choice = 0
    loop do
      puts "Enter a number between 1 and 100:"
      choice = gets.chomp.to_i
      break if (1..100).include?(choice)
      puts "Invalid guess"
    end
    choice
  end

  # def round_result
  #   if player_choice == random_number
  #     "equal"
  #   elsif player_choice > random_number
  #     puts "it's less"
  #     "less"
  #   elsif player_choice < random_number
  #     puts "its' greater"
  #     "greater"
  #   end
  # end

  # def correct_choice?
  #   if player_choice == random_number
  #     "equal"
  #   elsif player_choice > random_number
  #     puts "it's less"
  #     "less"
  #   elsif player_choice < random_number
  #     puts "its' greater"
  #     "greater"
  #   end
  # end

  # def display_round_message
  #   case correct_choice?
  #   when "less"
  #     puts "Your guess is too low."
  #   when "greater"
  #     puts "Your guess is too high."
  #   when 'equal'
  #     puts "That's the number!"
  #   end
  # end

  def ending_message
    if num_of_guesses == 0
      puts "You have no more guesses. You lost"
    elsif round_result == "equal"
      puts "You won!" 
    end
  end

  def play
    loop do
      guesses_left_message
      choice = player_choice
      round_result = ''
      if choice == random_number
        round_result = "equal"
      elsif choice > random_number
        puts "it's less"
      elsif choice < random_number
        puts "it's greater"
      end
      decrement_guesses
      break if round_result == "equal" || num_of_guesses == 0
    end
    ending_message
  end
end

game = GuessingGame.new
game.play