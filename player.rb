class Player
  attr_accessor :lives, :name
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lost?
        @lives <= 0
    end
end