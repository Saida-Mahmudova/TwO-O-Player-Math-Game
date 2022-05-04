
require './question'

require './player'
require './question'
class Game
  puts "Player 1 name?"
  print "> "
  p1 = gets.chomp
  player1 = Player.new(p1)
  puts "Player 2 name?"
  print "> "
  p2 = gets.chomp
  player2 = Player.new(p2)

  turn = 1

  while (!player1.lost? && !player2.lost?) do
    player = (turn == 1) ? player1 : player2
    puts "------NEW TURN------"
    print "> #{player.name}: "
    question = Question.new()
    answer = gets.chomp.to_i
  if answer == question.answer
    puts  "#{player.name}: YES! You are correct."
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  else 
    player.lives -=1
    puts "#{player.name}: Seriously? No!"
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
end
turn = (turn + 1) % 2
end
if player1.lives == 0
  puts "------GAME OVER------"
  puts "#{player2.name} wins with a score of #{player2.lives}/3"
  puts 'Good bye!'
elsif player2.lives == 0
  puts "------GAME OVER------"
  puts "#{player1.name} wins with a score of #{player1.lives}/3"
  puts 'Good bye!'
end

end