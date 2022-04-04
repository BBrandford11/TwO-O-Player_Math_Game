class Question
  attr_reader :number1, :number2
  def initialize()
    @first_num = rand(1..10)
    @second_num = rand(1..10)
    @correct = @first_num + @second_num
  end

  def ask(name)
    print "#{ name }: What does #{@first_num} plus #{@second_num} equal? "
    
    
  end 
  
  

  def check_answer
    @correct == @answer
  end

end