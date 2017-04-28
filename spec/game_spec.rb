require './lib/game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  context 'new instance of Game is created' do
    before { game = described_class.new(player_1, player_2) }

    describe '#switch_turns' do
      it 'responds to switch_turns' do
        expect(game).to respond_to :switch_turns
      end
    end
    describe '#attack' do
      it 'reduces HP of a player' do
        expect(player_1).to receive(:loses_hp)
        game.attack(player_1)
      end
    end
  end
end
