require './lib/game_logic'
require './bin/main'

describe GameLogic do
  let(:gl) { Game.new }
  describe '#valid_name(name)' do
    it 'checking valid name' do
      expect(gl.valid_name('ilie1')).to eql(false)
      expect(gl.valid_name('ilie/')).to eql(false)
      expect(gl.valid_name('i')).to eql(false)
      expect(gl.valid_name('il/ie1')).to eql(false)
      expect(gl.valid_name('ilie')).to eql(true)
      expect(gl.valid_name('marko')).to eql(true)
    end
  end
end