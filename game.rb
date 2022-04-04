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
    check_score
    check_lives
    puts "-----NEW TURN-----"
    rotation
  end 

  def check_lives
    if @player1.lost 
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3"  
      exit(0)
         
    end  
    if @player2.lost
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3"  
      exit(0)
      
    end 
  end

  def check_score
    puts "#{@player1.name}: #{@player1.lives}/3 vs. #{@player2.name}: #{@player2.lives}/3 "
  end

end