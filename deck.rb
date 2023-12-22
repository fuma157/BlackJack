require_relative 'card'
class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    Card::MARKS.each do |mark|
      Card::NUMBERS.each do |number|
        @cards << Card.new(mark, number)
      end
    end
    @cards.shuffle!
  end

  def draw(number)
    @cards.pop(number)
  end
end