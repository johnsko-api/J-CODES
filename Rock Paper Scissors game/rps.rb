def shoot
  puts 'Choose rock (r), paper (p), or scissors (s)'
end

puts 'Let\'s play rock, paper, scissors!'
puts 'SHOOT!'

cscore = 0
pscore = 0

while !(cscore.to_i == 2 || pscore.to_i == 2)
shoot
puts 'Player Score: ' + pscore.to_s + '  Computer Score: ' + cscore.to_s


player = gets.chomp.downcase
possibilities = ['rock','paper','scissors']


cchoice = possibilities[rand(0..2)]

    if player == 'r'
      puts 'Player chose rock.'
      puts 'Computer chose ' + cchoice + '.'
      if cchoice == 'rock'
          puts 'Tie, choose again.'
          puts ''
      elsif cchoice == 'scissors'
          pscore += 1
          puts 'Rock beats scissors, Player wins round.'
          puts ''
      elsif cchoice == 'paper'
          cscore += 1
          puts 'Paper beats Rock, Computer wins round.'
          puts ''
      end

    elsif player == 's'
        puts 'Player chose scissors.'
        puts 'Computer chose ' + cchoice + '.'
      if cchoice == 'rock'
          cscore += 1
          puts 'Rock beats scissors, Computer wins round.'
          puts ''
      elsif cchoice == 'scissors'
          puts 'Tie, choose again.'
          puts ''
      elsif cchoice == 'paper'
          pscore += 1
          puts 'Scissors beats paper, Player wins round.'
          puts ''
      end
    elsif player == 'p'
        puts 'Player chose paper.'
        puts 'Computer chose ' + cchoice + '.'
      if cchoice == 'paper'
          puts 'Tie, choose again.'
          puts ''
      elsif cchoice == 'rock'
          pscore += 1
          puts 'Paper beats rock, Player wins round.'
          puts ''
      elsif cchoice == 'scissors'
          cscore += 1
          puts 'Scissors beats paper, Computer wins round.'
          puts ''
      end
    else
       puts ''
       puts 'ERROR ERROR ERROR ERROR ERROR'
       puts '============================='
       puts 'COULD NOT COMPUTE! TRY AGAIN!'
       puts '============================='
       puts 'ERROR ERROR ERROR ERROR ERROR'
       puts ''
    end
          if cscore.to_i == 2
            puts 'Better luck next time, peasant!'
          elsif pscore.to_i == 2
            puts 'Computer ran away in defeat!'
          end


end
