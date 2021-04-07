require './lib/player_logic'

describe Player do
  let(:player) { Player.new }
  let(:name) { 'ilie' }
  let(:symbol) { 'X' }
  let(:counter) { 3 }
  let(:answers) { [1, 2, 3] }
  let(:choice) { 9 }
  describe '#initialize' do
    it 'checking setters and getters for name' do
      player.name = 'ilie'
      expect(player.name).to eql(name)
    end
    it 'checking setters and getters for answers' do
      player.answers = [1, 2, 3]
      expect(player.answers).to eql(answers)
    end
    it 'checking setters and getters for symbol' do
      player.symbol = 'X'
      expect(player.symbol).to eql(symbol)
    end
    it 'checking setters and getters for counter' do
      player.counter = 3
      expect(player.counter).to eql(counter)
    end
    it 'checking setters and getters for choice' do
      player.choice = 9
      expect(player.choice).to eql(choice)
    end
  end
  describe '#to_s' do
    it 'checking to string method' do
      player.name = 'ilie'
      player.answers = [1, 2, 3]
      player.symbol = 'X'
      player.choice = 9
      expect(player.to_s).to eql("Name = #{name} answers = #{answers} symbol = #{symbol} choiche = #{choice}")
    end
  end
end
