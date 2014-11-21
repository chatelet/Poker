require_relative 'card.rb'

class Deck

  attr_accessor :cards

  def initialize
    @cards = generate_cards
  end

  def generate_cards
    result = []
    Card.suits.each do |suit|
      Card.values.each do |value|
          result << Card.new(suit, value)
      end
    end
    result.shuffle
  end

  def give_cards(number)
    raise "not enough cards in deck" if @cards.count < number
    output = []
    number.times do
      output << @cards.pop
    end
    output
  end

end
