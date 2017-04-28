require './lib/game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe "#attack" do
    it "attacks opponent" do
      subject = Game.new
      expect(subject).to respond_to(:attack)
    end

    it 'reduces HP of a player' do
      expect(player_1).to receive(:loses_HP)
      subject.attack(player_1)
    end
  end
end
