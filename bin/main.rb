#!/usr/bin/env ruby
require_relative '../lib/game_logic'
require_relative '../lib/player_logic'

class Game
  include GameLogic
  attr_accessor :player1, :player2, :players

  def initialize()
    @player1 = Player.new
    @player2 = Player.new
    @players = [@player1, @player2]
    @game_over = false
    @counter = 0
    @choices = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @winner = 'TIE'
  end

  private

  def draw_board
    puts '+---+---+---+'
    puts "| #{@choices[0]} | #{@choices[1]} | #{@choices[2]} |"
    puts '+---+---+---+'
    puts "| #{@choices[3]} | #{@choices[4]} | #{@choices[5]} |"
    puts '+---+---+---+'
    puts "| #{@choices[6]} | #{@choices[7]} | #{@choices[8]} |"
    puts '+---+---+---+'
  end

  def initialize_game
    puts 'Welcome to the game'
    puts 'Enter Player 1 name: '
    @player1.name = gets.chomp
    until valid_name(@player1.name)
      puts 'Please enter a valid name (the length should be between 1 and 20, no symbols or digits'
      @player1.name = gets.chomp
    end
    @player1.symbol = 'X'
    puts 'Enter player 2 name: '
    @player2.name = gets.chomp
    until valid_name(@player2.name)
      puts 'Please enter a valid name (the length should be between 1 and 20, no symbols or digits'
      @player2.name = gets.chomp
    end
    @player2.symbol = 'O'
    sleep(1)
    puts "#{@player1.name} will be #{@player1.symbol}, and #{@player2.name} will be #{@player2.symbol}."
    sleep(1)
    puts "Let's start!"
    sleep(1)
  end

  def main_process
    @players.each do |player|
      break if game_over

      puts "It's #{player.name}'s turn"
      puts 'Please select an available cell from the board: '
      good_answer = false
      until good_answer
        player.choice = gets.chomp.to_i
        if @choices.include?(player.choice)
          collect_answers_of_player(player)
          good_answer = true
        else
          puts "Invalid input, #{player.name} should try again (input should be a number form 1 to 9)"
        end
      end
      main_process_logic(player)
      draw_board
    end
  end

  public

  def start_game
    initialize_game
    draw_board
    main_process until game_over
    puts
    if @winner == 'DRAW'
      puts "It's a DRAW"
    else
      puts "#{@winner} is Winner!"
    end
    puts
    puts 'Game over. Thank you for playing!'
    puts
  end
end

#game = Game.new
#game.start_game
