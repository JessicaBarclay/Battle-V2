require './lib/game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe "#switch_turns" do
    it 'responds to switch_turns' do
      subject = (Game.new(player_1, player_2))
      expect(subject).to respond_to :switch_turns
    end
  end

  describe "#attack" do
    it 'reduces HP of a player' do
      subject = (Game.new(player_1, player_2))
      expect(player_1).to receive(:loses_HP)
      subject.attack(player_1)
    end
  end
end
