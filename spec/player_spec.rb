require 'player'

describe Player do
	subject(:player) {described_class.new('Alain')}

	it 'returns its name' do
		expect(player.name).to eq('Alain')
	end

	it 'player starts with 100 HP' do
		expect(player.hp).to eq(100)
	end

	describe "#attacked" do
		it 'player loses 10 HP when attacked' do
			expect{player.attacked}.to change{player.hp}.by -10
		end
	end

  describe '#dead?' do
    it 'player has 0 HP, they are dead' do
      10.times {player.attacked}
      expect(player).to be_dead
    end
  end
end

