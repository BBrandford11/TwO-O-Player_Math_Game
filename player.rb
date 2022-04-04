class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def lost
    @lives == 0
  end

  def ask_question
    question= Question.new
    question.ask(name)
  end
  
end
