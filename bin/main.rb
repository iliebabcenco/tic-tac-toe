#!/usr/bin/env ruby
class Game 
    attr_accessor :player1, :player2

    def initialize()
        @player1=nil
        @player2=nil

    end

    def draw_board
        puts '+---+---+---+'
        puts '| 1 | 2 | 3 |'
        puts '+---+---+---+'
        puts '| 4 | 5 | 6 |'
        puts '+---+---+---+'
        puts '| 7 | 8 | 9 |'
        puts '+---+---+---+'

    end

    def initialize_game 
        puts 'Welcome to the game'
        puts 'Enter Player 1 name: '
        @player1 = gets.chomp
        puts 'Enter player 2 name: '
        @player2 = gets.chomp
        puts "#{@player1} will be X, and #{@player2} will be O."
    end

    def start_game
        draw_board()

    end





end

game1 = Game.new
game1.initialize_game
game1.start_game