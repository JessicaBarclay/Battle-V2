require 'player'

describe Player do
  subject(:jess) { described_class.new('Jess') }
  subject(:bernie) { described_class.new('Bernie') }

  describe '#loses_HP' do
    it 'Deducts 10 HP from opponent' do
      expect{ jess.loses_hp }.to change{ jess.hp }.by(-Player::DEFAULT_DAMAGE)
    end
  end

  describe '#name' do
    it 'Returns Player name' do
    expect(jess.name).to eq 'Jess'
    end
  end

  describe '#hp' do
    it 'Returns Player hp' do
      expect(jess.hp).to eq Player::DEFAULT_HEALTH
    end
  end
end
