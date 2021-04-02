require_relative 'player_logic'

module GameLogic
  def main_process_logic(player)
    check_outcome(player)
    game_over
  end

  def valid_name(name)
    return false if name.length <= 1 || name.length > 20 || !name.match(/^[a-z]+$/i)

    true
  end

  private

  def check_outcome(player)
    return unless player.answers.length >= 3

    answers = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
    answers.each do |sub_array|
      intersection = sub_array & player.answers
      if intersection == sub_array
        @game_over = true
        @winner = player.name
        break
      elsif player.counter >= 5 && intersection != sub_array
        @game_over = true
        @winner = 'DRAW'
      end
    end
  end

  def collect_answers_of_player(player)
    player.answers << player.choice
    player.counter += 1
    @choices[player.choice - 1] = player.symbol
  end

  def game_over
    @game_over
  end
end
