class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def attacked
  	@hp -= 10
  end

  def dead?
    @hp == 0
  end

end

