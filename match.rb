class Match
  attr_accessor :winners, :highscore

  def initialize
    @winners = [] 
    @highscore = 0
  end

  def start_round
    puts "--- NEW TURN ---"
  end

  def game_over
    puts "--- GAME OVER ---"
  end

  def winner(name, score)
    if score > self.highscore
      self.highscore = score
    end
    self.winners << name
    puts "#{name} is the WINNER! with a score of #{score}"
  end

end

new_game = Match.new