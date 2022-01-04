class Questions
  attr_accessor :ans

  def initialize
    @ans = ""
  end

  def generate_question
    a = rand(1..20)
    b = rand(1..20)

    if rand(2) > 0
      ques = "What does #{a} plus #{b} equal?"
      self.ans = a + b
    else
      a > b ? ques = "What does #{a} minus #{b} equal?" : ques = "What does #{b} minus #{a} equal?"
      self.ans = (a - b).abs
    end

    ques
  end

  def check_answer(inp)
    if inp.to_s == self.ans.to_s
      true
    else
      false
    end
  end

end