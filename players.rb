class Players
  attr_accessor :name, :life, :score

  def initialize(name)
    @name = name
    @life = 3
    @score = 0
  end

  def delete_life
    if self.life > 0
      self.life -= 1
    end
  end

  def plus_score
    self.score += 1
  end
end