require "rspec"
require "deck"

describe "#initialize" do
  # initialize a deck containing 52 cards in random order
  let (:deck) {Deck.new}
  it 'generate an array containing 52 cards' do
    expect(deck.cards.count).to eq(52)
  end

  it 'generate an array without duplicates' do
    expect(deck.cards.uniq.count == deck.cards.count).to eq(true)
  end
end

describe "#give_cards" do
  #pops a number of cards from the deck equal to the given argument
  context 'gives 2 cards' do

    let (:deck) {Deck.new}
    it 'returns two cards' do
      expect(deck.give_cards(2).count).to eq(2)
    end

    it 'pops 2 cards from deck' do
      deck.give_cards(2)
      expect(deck.cards.count).to eq(50)
    end

    #let (:deck1) {Deck.new}
    it 'raise an error when the deck does not have enough cards to pop' do
      deck.cards = [Card.new(:spades, :four)]
      expect {deck.give_cards(2)}.to raise_error("not enough cards in deck") 
    end
  end


end
