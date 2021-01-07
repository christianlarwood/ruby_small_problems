class GuessingGame

  def initialize
    @random_num = rand(1..100)
    @guesses = 7
    @user_pick = nil
  end

  def user_pick
    choice = nil
    loop do
      puts "Enter a number between 1 and 100:"
      choice = gets.chomp.to_i
      break if (1..100).to_a.include?(choice)

      puts "Invalid guess."
    end
    @user_pick = choice
  end

  def round_result
    if @user_pick > @random_num
      puts "Your guess is too high"
    elsif @user_pick < @random_num
      puts "Your guess is too low"
    elsif @user_pick == @random_num
      puts "That's the number!"
      0
    end
  end

  def guesses_remaining
    @guesses -= 1
  end

  def guesses_remaining_msg
    puts "You have #{@guesses} remaining."
  end

  def play
    loop do
      p @random_num
      guesses_remaining_msg
      user_pick
      round_result
      guesses_remaining
      break if round_result == 0 || @guesses == 0
    end
  end
end



game = GuessingGame.new
game.play