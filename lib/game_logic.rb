module GameLogic
    answers = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
    def main_process_logic(player)
        player_answers = collect_answers_of_player(player)
        
        if check_outcome(player_answers)
            "#{player} is winner."
        else
            'Its a tie'
        end
    
        # loop do
    #   if @counter < 9
    #     choice = gets.chomp.to_i
    #     if @choices.include?(choice)
    #       @counter += 1
    #       @choices[choice - 1] = @players.key(player)
    #       break
    #     else
    #       puts "Invalid input, #{player} should try again (input should be a number form 1 to 9)"
    #     end
    #   else
    #     @winner = @player1
    #     @game_over = true
    #     return 0
    #   end
    # end
  end

  def check_outcome(array)
    p array
    if(array.length>=3)
        answers.each do |subArray|
            subArray == array 
        end
    
    end

  end

  def collect_answers_of_player(player)
    player_choices = []
    
    until @game_over
        choice = gets.chomp.to_i
        if @choices.include?(choice)
            player_choices << choice
        else
          puts "Invalid input, #{player} should try again (input should be a number form 1 to 9)"
        end
    end

    player_choices
  end
end