class Player

    attr_accessor :name, :answers, :symbol, :counter, :choice

    def initialize ()
        @name = name
        @answers = []
        @symbol = ""
        @counter = 0
        @choice = nil
    end

    def to_s
        "Name = #{@name} answers = #{answers} symbol = #{symbol} choiche = #{choice}"
    end
end