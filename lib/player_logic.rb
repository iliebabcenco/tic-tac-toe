class Player

    attr_accessor :name, :answers, :symbol, :counter

    def initialize ()
        @name = name
        @answers = []
        @symbol = ""
        @counter = 0
    end

    def make_choice
        choice = gets.chomp.to_i
        
    end

    def to_s
        "Name = #{@name} answers = #{answers} symbol = #{symbol}"
    end
end