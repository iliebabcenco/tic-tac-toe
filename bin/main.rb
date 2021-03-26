#!/usr/bin/env ruby
class Game 
    attr_accessor :player1, :player2, :players

    @@var1 = 1
    @@var2 = 2
    @@var3 = 3
    @@var4 = 4
    @@var5 = 5
    @@var6 = 6
    @@var7 = 7
    @@var8 = 8
    @@var9 = 9
    
    def initialize()
        @player1=nil
        @player2=nil
        @players = []
        @game_over = false
        @counter = 0
    end

    def draw_board
        puts '+---+---+---+'
        puts "| #{@@var1} | #{@@var2} | #{@@var3} |"
        puts '+---+---+---+'
        puts "| #{@@var4} | #{@@var5} | #{@@var6} |"
        puts '+---+---+---+'
        puts "| #{@@var7} | #{@@var8} | #{@@var9} |"
        puts '+---+---+---+'
    end

    def initialize_game 
        puts 'Welcome to the game'
        puts 'Enter Player 1 name: '
        @player1 = gets.chomp
        @players.push(@player1)
        puts 'Enter player 2 name: '
        @player2 = gets.chomp
        @players.push(@player2)
        sleep(1)
        puts "#{@player1} will be X, and #{@player2} will be O."
        sleep(1)
        puts "Let's start!"
        sleep(1)
    end

    def make_choice
        for player in @players
            draw_board()
            puts "It's #{player} turn"
            puts "Please select an available cell from the board: "
            choice = gets.chomp
        end
    end

    def update_board



    end

    def start_game
        initialize_game
        until (@game_over)
            if(@counter < 9)
                make_choice
                @counter += 1
            else
                @game_over = true
            end
        end
    end





end

game = Game.new
game.start_game

