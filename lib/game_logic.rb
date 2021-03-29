require_relative 'player_logic.rb'

module GameLogic
  @@answers = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
  def main_process_logic(player)
        collect_answers_of_player(player)
        check_outcome(player)
        game_over
  end

  def check_outcome(player)

    if(player.answers.length>=3)
        @@answers.each do |subArray| 
            intersection = subArray & player.answers
            if intersection == player.answers 
                @game_over = true
                @winner = player.name
            elsif player.counter >= 5 && intersection != player.answers
                @game_over = true
                @winner = 'TIE'
            elsif player.counter >= 5
                @game_over = true
                @winner = player.name
            end
        end
    
    end

  end

  def collect_answers_of_player(player)
     
     choice = player.make_choice
      if @choices.include?(choice)
          player.answers << choice
          player.counter += 1
          @choices[choice - 1] = player.symbol
      else
        puts "Invalid input, #{player.name} should try again (input should be a number form 1 to 9)"
      end
  end

  def game_over
    @game_over
  end

end