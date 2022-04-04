require "./player"

class Game
  attr_accessor :score

  def initialize()
    @player1 = Player.new("Bryce")
    @player2 = Player.new("Claire")
  end

  def new_game
    puts "New game starting"
    rotation
  end

  def rotation
    @player1.ask_question
    @player2.ask_question
    puts "-----NEW TURN-----"
  end 





  
end