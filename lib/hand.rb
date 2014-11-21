

class Hand

  SUIT_STRINGS = {
    :clubs    => "♣",
    :diamonds => "♦",
    :hearts   => "♥",
    :spades   => "♠"
  }


  POKER_VALUE = {
    :deuce => 2,
    :three => 3,
    :four  => 4,
    :five  => 5,
    :six   => 6,
    :seven => 7,
    :eight => 8,
    :nine  => 9,
    :ten   => 10,
    :jack  => 11,
    :queen => 12,
    :king  => 13,
    :ace   => 14
  }

  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def sorted_cards
    @cards.sort_by { |card| POKER_VALUE[card.value] }.reverse
  end

  def straight?
    temp_cards = self.sorted_cards
    (0..@cards.count - 2).each do |i|
      return false unless (temp_cards[i].integer_value - temp_cards[i+1].integer_value) == 1
    end
    true
  end

  def flush?
    current_suit = @cards[0].suit
    @cards.all? { |card| card.suit == current_suit }
  end

  def integer_values
    result = []
    @cards.each do |card|
      result << card.integer_value
    end
    result
  end

  def compute_category
    if straight? && flush?
      return [:straight_flush, integer_values.sort]
    end
  end



end
