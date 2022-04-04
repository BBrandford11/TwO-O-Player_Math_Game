class Question
  attr_reader :number1, :number2
  def initialize()
    @first_num = rand(1..10)
    @second_num = rand(1..10)
    @correct = @first_num + @second_num
  end

  def ask(name)
    puts "#{ name }: What does #{@first_num} plus #{@second_num} equal? "
    #print "Please enter your answer"
    
  end   

  def check_answer(result)
    
     result == @correct
  end

end