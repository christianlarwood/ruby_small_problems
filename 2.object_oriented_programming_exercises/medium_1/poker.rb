require 'pry'
class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  
  attr_reader :current 
  
  def initialize
    reset
  end
  
  def draw(num = 1)
    card_drawn = []
    num.times do
      card_drawn << current.pop
      reset if current.empty?
    end
    card_drawn
  end
  
  def reset
    @current = (RANKS.product(SUITS).shuffle
                .map {|rank, suit| Card.new(rank, suit)})
  end
end


class Card
  attr_reader :rank, :suit
  
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

class PokerHand
  attr_accessor :hand

  def initialize(deck)
    if deck.class == Deck
      @hand = deck.draw(5)
    else
     @hand = deck
    end
  end

  def print
    hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def royal_flush?
    hand.min_by {|card| Deck::RANKS.index(card.rank)}.rank == 10 &&
      straight_flush?
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
    pair?(1,4)
  end

  def full_house?
    flush?(:rank, 2)
  end

  def flush?(ivar = :suit, size = 1)
    flush = ''
    suit = hand.map(&ivar)
    if suit.uniq.size == size
      full = "Y"
    end
    full == "Y"
  end

  def straight?
    start = []
    hand.each {|card| start << Deck::RANKS.index(card.rank)}
    return false if start.uniq.size != 5 #duplicates
    start.max - start.min == 4 #
  end

  def three_of_a_kind?
    pair?(1,3)
  end
      
  def two_pair?
    pair?(2, 2)
  end

  def pair?(sum = 1, num_of_cards = 2)
    pairs = 0
    ranks = hand.map(&:rank)
    ranks.uniq.each do |rank|
      if ranks.count(rank) == num_of_cards
        pairs += 1
      end
    end
    pairs == sum
  end 
end
      
hand = PokerHand.new(Deck.new)

# # Danger danger danger: monkey
# # patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'