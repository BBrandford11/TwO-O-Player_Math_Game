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
    new_question= Question.new
    new_question.ask(name)
    result = gets.chomp
    check = new_question.check_answer(result.to_i)
    if check == true
      puts "#{name}: YES! You are correct."
    else
      puts "#{name}: WRONG! " 
      lose_life      
    end
  end
  
end
