class BowlingGame
  def initialize
    @score = 0
  end

  def score
    @score
  end

  def roll(pins)
    @score = pins
  end
end