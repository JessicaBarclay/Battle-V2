class Player
  DEFAULT_HEALTH = 60
  DEFAULT_DAMAGE = 10
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HEALTH)
    @name = name
    @hp = hp
  end

  def loses_hp
    self.hp -= DEFAULT_DAMAGE
  end

  private
  attr_writer :hp

end
