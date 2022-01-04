require './match'
require './players'
require './questions'

puts "Enter name player 1:"
player1 = Players.new(gets.chomp)
puts "Enter name player 2:"
player2 = Players.new(gets.chomp)

new_game = Match.new
my_ques = Questions.new

turn = "P1"

while(player1.life > 0 && player2.life > 0)
  if turn == "P1" 
    player = player1
    turn = "P2"
  else
    player = player2
    turn = "P1"
  end

  new_game.start_round
  

  puts "#{player.name}: #{my_ques.generate_question}"
  answer = gets.chomp

  if my_ques.check_answer(answer)
    player.plus_score
    puts "#{player.name}: YES! You are correct!"
    puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
  else
    player.delete_life
    puts "#{player.name}: Seriously? NO!"
    puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
  end
  
end