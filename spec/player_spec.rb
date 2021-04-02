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
      expect(name).to eql('ilie')
    end
    it 'checking setters and getters for answers' do
      expect(answers).to eql([1, 2, 3])
    end
    it 'checking setters and getters for symbol' do
      expect(symbol).to eql('X')
    end
    it 'checking setters and getters for counter' do
      expect(counter).to eql(3)
    end
    it 'checking setters and getters for choice' do
      expect(choice).to eql(9)
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
