class Card
  attr_reader :mark, :number
  MARKS = ["ダイヤ", "クローバー", "ハート", "スペード"].freeze
  NUMBERS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"].freeze


  def initialize(mark, number)
    @mark = mark
    @number = number
  end

  def score
    if @number == "J" || @number == "Q" || @number == "K" || @number == "A"
      10
    else
      @number.to_i
    end
  end

  def to_s
    "#{@mark}の#{@number}"
  end

end