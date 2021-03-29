#!/usr/bin/env ruby
require_relative '../lib/game_logic.rb'
require_relative '../lib/player_logic.rb'

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
    puts
    puts 'Welcome to the game'
    puts
    puts 'Enter Player 1 name: '
    @player1.name = gets.chomp
    @player1.symbol = "X"
    puts 'Enter player 2 name: '
    @player2.name = gets.chomp
    @player2.symbol = "O"
    sleep(1)
    puts
    puts "#{@player1.name} will be #{@player1.symbol}, and #{@player2.name} will be #{@player2.symbol}."
    sleep(1)
    puts
    puts "Let's start!"
    puts
    sleep(1)
  end

  def main_process
    @players.each do |player|
      draw_board
      puts
      puts "It's #{player.name}'s turn"
      puts 'Please select an available cell from the board: '
      # there should be full logic of main process
      main_process_logic(player)
      # end of logic
    end
  end

  # this method is just a part of future logic
  

  def start_game
    initialize_game
    main_process until @game_over
    if @winner == 'TIE'
      puts "It's TIE"
    else
      puts "#{@winner} is Winner!"
    end
    puts
    puts 'Game over'
  end
end

game = Game.new
game.start_game
