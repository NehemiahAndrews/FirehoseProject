# The program card.rb was written by Nehemiah Andrews
# as part of The Firehose Project 


# A card object contains the attributes rank and suit
# which can only be set when a card is initialized.
class Card
  attr_reader :rank, :suit
  
  def initialize (rank,suit)
    @rank = rank
    @suit = suit  
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end
end

# A deck object contains an array of card objects
# when initialized, the deck populates the array with all 
# available cards in a standard deck.
class Deck
    SUITS = %w{ Clubs Spades Hearts Diamonds }
    RANKS = %w{ Ace 2 3 4 5 6 7 8 9 Jack Queen King }

  # The deck initializer generates and populates an array of cards
  def initialize 
    @cards = []



    # Idiomatic ruby loop
    SUITS.each do |suit|
      RANKS.each do |rank|
        @cards.push(Card.new(rank,suit))
      end
    end
  end

  # The output method shows all cards within @card array (the deck). 
  # It is only useful for demonstrating the completeness of the deck.
  def output
    @cards.each do |card|
      card.output_card
    end
    puts "\n"
  end

  # The shuffle method shuffles the member elements of the 
  # @cards array (the deck)
  def shuffle
    @cards.shuffle!
  end

  # The deal method removes the top card from the @cards array (the deck)
  # and returns that card to the caller, "dealing" a card.
  def deal
    @cards.shift
  end
end

## ---  All code below this line is simply a functional example of the deck class --- ##
## ---------------------------------------------------------------------------------- ##

deck = Deck.new


# Below is sample code proving the functionality of a deck. 
# To use the deck class as part of a card game application, simply 
# initialize a deck and then call the deal method to return the top card
# to your game logic.

puts "Show full deck"
deck.output

puts "Deal one card"
deck.deal.output_card

puts "\nShow remainder of deck"
deck.output

puts "Shuffle remaining cards, then deal one and display the rest"
deck.shuffle

puts "Dealt Card:"
deck.deal.output_card

puts "\n"
deck.output
