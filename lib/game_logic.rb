module GameLogic
  
    def main_process_logic(player)
    loop do
      if @counter < 9
        choice = gets.chomp.to_i
        if @choices.include?(choice)
          @counter += 1
          @choices[choice - 1] = @players.key(player)
          break
        else
          puts "Invalid input, #{player} should try again (input should be a number form 1 to 9)"
        end
      else
        @winner = @player1
        @game_over = true
        return 0
      end
    end
  end
end