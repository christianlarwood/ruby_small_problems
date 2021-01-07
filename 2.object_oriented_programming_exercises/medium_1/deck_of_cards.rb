class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  attr_reader :cards

  def initialize
    reset
  end

  def draw
    reset if cards.empty?
    cards.pop
  end

  # first, create array of all combos, then map to a new array of objects. This allows us to call #rank #suit in the test cases. 
  def reset
    @cards = RANKS.product(SUITS).map do |rank, suit| 
      Card.new(rank, suit)
    end

    cards.shuffle
  end
end

class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end


deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
# p drawn
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.