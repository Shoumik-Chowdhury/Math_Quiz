require './players'
require './questions'

puts "Enter name player 1:"
player1 = Players.new(gets.chomp)
puts "Enter name player 2:"
player2 = Players.new(gets.chomp)

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

  puts "--- NEW TURN ---"
  

  puts "#{player.name}: #{my_ques.generate_question}"
  answer = gets.chomp

  if my_ques.check_answer(answer)
    player.plus_score
    puts "#{player.name}: YES! You are correct!"
    puts "--- Score --- "
    puts "#{player1.name}: #{player1.score} vs #{player2.name}: #{player2.score}"
  else
    player.delete_life
    puts "#{player.name}: Seriously? NO!"
    puts "❤️  Lives left ❤️"
    puts "#{player1.name}: #{player1.life}/3 vs #{player2.name}: #{player2.life}/3"
    puts "--- Score ---"
    puts "#{player1.name}: #{player1.score} vs #{player2.name}: #{player2.score}"
  end
  
end

if player1.score > player2.score
  puts "#{player1.name} is the WINNER! with a score of #{player1.score}"
else
  puts "#{player2.name} is the WINNER! with a score of #{player2.score}"
end

puts "--- GAME OVER ---"
puts "Good bye !"
