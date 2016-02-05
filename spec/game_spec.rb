require 'game'

describe Game do

  let(:player_1) {double(:player)}
  let(:player_2) {double(:player)}
  subject(:game){ described_class.new(player_1, player_2)}

  describe '#attack' do
    it 'player can attack another player' do
      expect(player_2).to receive(:attacked)
      game.attack(player_2)
    end
  end

  describe '#switch_turn' do
    it 'changes current player' do
      game.switch_turn
      expect(game.current).to eq player_2
    end
  end
end