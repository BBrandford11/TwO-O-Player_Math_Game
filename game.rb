require "./player"

class Game
  attr_accessor :score

  def initialize()
    @player1 = Player.new("Bryce")
    @player2 = Player.new("Claire")
  end

  def new_game
    puts "New game starting"
    @player1.ask_question
  end





  
end