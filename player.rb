require_relative "deck"

class Player
    attr_reader :cards
    def initialize
        @cards =[]

    end

    def deal(deck,number)
        @cards << deck.draw(number)
        @cards.flatten!
    end

    def score
        result = 0
        ace =[]
        @cards.each do |card|
            if card.score == 1
                ace << card
            end
            result += card.score
        end
        #Aのとき
        if result <= 11 && ace.size > 0
            result += 10 
            return result
        end

        return result
    end

    def over
        if score > 21
            puts "21を超えたのであなたの負けです。"
            puts "ゲームを終了します。"
            exit
        end
        
    end

end

class Dealer < Player
  def over
    if score > 21
        puts "21を超えたのでディーラーの負けです。"
        puts "ゲームを終了します。"
        exit
    end
  end
    
end
