require 'rspec'
require 'deck'
require 'hand'

describe "#initialize" do
  let(:cards) {
    cards = []
    5.times do
      cards << Card.new(:spades, :four)
    end
    cards
  }
  let(:hand) {Hand.new(cards)}

  it "initializes a hand with 5 cards" do
    expect(hand.cards.count).to eq(5)
  end
end

#{0=> 'straight flush', 1 => 'four of a kind',.... 8->}
#[name of category, [1,2,3,4,5]]
[3,4,5,6,7]


describe "#compute_category" do
  #compute_hand_category

  it 'return straight flush' do
    hand = Hand.new([Card.new(:spades, :four),Card.new(:spades, :five),
      Card.new(:spades, :six), Card.new(:spades, :seven), Card.new(:spades, :eight)])
      expect(hand.compute_category).to eq([:straight_flush, [8,7,6,5,4]])
  end

  it 'return four of a kind'

  it 'return full house'


  it 'return flush'

  it 'return straight'

  it 'return three of a kind'

  it 'return two pair'

  it 'return one pair'

  it 'return high card'

end

describe "#straight" do

  it "returns true for straight" do
    hand = Hand.new([Card.new(:spades, :four),Card.new(:spades, :six),
      Card.new(:spades, :seven), Card.new(:spades, :five), Card.new(:spades, :eight)])
    p hand.sorted_cards
    expect(hand.straight?).to eq(true)
  end

  it "returns false for not straight" do
    hand = Hand.new([Card.new(:spades, :four),Card.new(:spades, :six),
      Card.new(:spades, :ten), Card.new(:spades, :five), Card.new(:spades, :eight)])
      expect(hand.straight?).to eq(false)
    end
end


describe "#flush" do

  it "returns true for flush?" do
    hand = Hand.new([Card.new(:spades, :four),Card.new(:spades, :six),
      Card.new(:spades, :seven), Card.new(:spades, :five), Card.new(:spades, :eight)])
      expect(hand.flush?).to eq(true)
    end

    it "returns false for not flush?" do
      hand = Hand.new([Card.new(:spades, :four),Card.new(:spades, :six),
        Card.new(:spades, :ten), Card.new(:hearts, :five), Card.new(:spades, :eight)])
        expect(hand.flush?).to eq(false)
      end
    end







# #g = Game.new
# player < hand
#    deck = Deck.new
#    5 players(hand)
#      player.new(intialize hand)
