require 'rspec'
require 'card'

describe "#initialize" do
  it 'rasie an error when initialize with invalid suit and value' do
    expect {Card.new(0, 1)}.to raise_error("Invalid card suit or value")
  end
end

describe "#<=>" do
    let(:card1) {Card.new(:spades, :four)}
    let(:card2) {Card.new(:spades, :four)}
    let(:card3) {Card.new(:spades, :five)}

  it 'returns 0 if the values of two cards are equal' do
    expect(card1 <=> card2).to eq(0)
  end

  it "returns 1 if the first card is higher" do
    expect(card3 <=> card1).to eq(1)
  end

  it "returns -1 if the second card is higher" do
    expect(card1 <=> card3).to eq(-1)
  end
end
