require_relative 'deck'
require_relative 'player'
class Game

  def initialize
    @deck = Deck.new
    @player = Player.new
    @dealer = Dealer.new
  end

  def play
    puts "ブラックジャックを開始します"
    @player.deal(@deck,2)

    puts "あなたが引いたカードは#{@player.cards[0]}です"
    puts "あなたが引いたカードは#{@player.cards[1]}です"
    @dealer.deal(@deck,2)
    puts "ディーラーが引いたカードは#{@dealer.cards[0]}です"
    puts "ディーラーが引いた２枚目のカードはわかりません"
                                        @dealer.cards[1]
    puts "あなたの現在の得点は#{@player.score}です。カードを引きますか？(Y/N)"
    draw_card = gets.chomp
    i = 2
    while draw_card == "Y"
        @player.deal(@deck,1)
        puts "あなたが引いたカードは#{@player.cards[i]}です"
        @player.over
        puts "あなたの現在の得点は#{@player.score}です。カードを引きますか？(Y/N)"  
        draw_card = gets.chomp
        i += 1
    end

        puts "ディーラーが引いた2枚目のカードは#{@dealer.cards[1]}でした。"
        puts "ディーラーの現在の得点は#{@dealer.score}です。"
    ii = 2  
    while @dealer.score < 17
        @dealer.deal(@deck,1)
        puts "ディーラーが引いたカードは#{@dealer.cards[ii]}です"
        @dealer.over
        ii += 1     
    end
    puts "あなたの得点は#{@player.score}です"
    puts "ディーラーの得点は#{@dealer.score}です"
    
    if @player.score == @dealer.score   
        puts "引き分けです"
    elsif @player.score > @dealer.score
        puts "あなたの勝ちです!"
    elsif @player.score < @dealer.score
        puts "ディーラーの勝ちです!"
    end
    
    puts "ブラックジャックを終了します。"
  end

end

    

