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
  context 'main process logic returns true (game over) if the player is a winner
    (answers array has winning combination)
    or we have more than 5 choices for a player' do
      it 'returns true because player ilie has answers 1, 2, 3 and we have a winner' do
        player.answers = [1, 2, 3]
        expect(gl.main_process_logic(player)).to be true
      end

      it 'returns true because player ilie has answers 2, 5, 8 and we have a winner' do
        player.answers = [2, 5, 3, 8]
        expect(gl.main_process_logic(player)).to be true
      end

      it 'returns true because player ilie has answers 1, 5, 9 and we have a winner' do
        player.answers = [1, 9, 5]
        expect(gl.main_process_logic(player)).to be true
      end
      it 'returns true because player ilie has answers 1, 5, 9 and we have a winner' do
        player.answers = [1, 4, 6, 2, 5]
        expect(gl.main_process_logic(player)).to be true
      end
      it 'returns true because player ilie has answers 4, 5, 6 and we have a winner' do
        player.answers = [1, 4, 6, 5]
        expect(gl.main_process_logic(player)).to be true
      end
      it "returns true because player ilie has 5 answers and it's a draw, game is over" do
        player.answers = [7, 4, 8, 6, 1]
        expect(gl.main_process_logic(player)).to be true
      end
      it "returns false because player ilie doesn't have enough answers" do
        player.answers = [5]
        player.counter = 1
        expect(gl.main_process_logic(player)).to be false
      end
      it "returns false because player ilie doesn't have enough answers" do
        player.answers = [5, 9, 3, 4]
        player.counter = 1
        expect(gl.main_process_logic(player)).to be false
      end
    end
end
