class Match
  attr_accessor :score_player_1, :score_player_2

  def initialize
    @score_player_1 = 0 
    @score_player_2 = 0
  end

  def start_round
    puts "---NEW TURN---"
  end

  def game_over
  end

  def winner
  end

end

new_game = Match.new