require 'game'

describe Game do
  subject(:game){ described_class.new }
  let(:player) {double(:player)}
  describe '#attack' do
    it 'player can attack another player' do
      expect(player).to receive(:attacked)
      game.attack(player)
    end
  end
end