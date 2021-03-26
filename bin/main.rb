#!/usr/bin/env ruby
class Game 
    attr_accessor :player1, :player2, :players

    # @@var1 = 1
    # @@var2 = 2
    # @@var3 = 3
    # @@var4 = 4
    # @@var5 = 5
    # @@var6 = 6
    # @@var7 = 7
    # @@var8 = 8
    # @@var9 = 9

    
    def initialize()
        @player1=nil
        @player2=nil
        @players = {}
        @game_over = false
        @counter = 0
        @choices = [1, 2, 3, 4, 5, 6, 7, 8, 9]
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
        puts 'Welcome to the game'
        puts 'Enter Player 1 name: '
        @player1 = gets.chomp
        @players["X"] = @player1
        puts 'Enter player 2 name: '
        @player2 = gets.chomp
        @players["O"] = @player2
        sleep(1)
        puts "#{@player1} will be X, and #{@player2} will be O."
        sleep(1)
        puts "Let's start!"
        sleep(1)
    end

    def make_choice
        
            for player in @players.values # 2
                if @counter < 9
                    draw_board()
                    puts "It's #{player} turn"
                    puts "Please select an available cell from the board: "
                    while (true)
                        choice = gets.chomp.to_i
                        if (@choices.include?(choice))
                            @counter += 1
                            @choices[choice-1] = @players.key(player)
                            break
                        else
                            puts "Invalid input, #{player} should try again"   
                        end
                    end
                else
                    @game_over = true
                    return
                end
            end
        
    end


    def start_game
        initialize_game
        until (@game_over)
            
            make_choice
            puts 'Game over'
            
        end
    end





end

game = Game.new
game.start_game

