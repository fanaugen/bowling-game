class BowlingGame
	
  def initialize
    @frames = []
  end

  def roll(pins)
    @frames.push pins
	end

  def score
    @frames.reduce &:+
    #### equivalent to:
    # total = 0
    # @frames.each do |frame|
    #   total += frame
    # end
    # total
  end

  def print_status

  end

end

###########################################################
pins_knocked_down = [1, 4, 4, 5, 6, 4, 5, 5, 10, 0, 1, 7, 3, 6, 4, 10, 2, 8, 6]
expected_total_score = 133

game = BowlingGame.new
pins_knocked_down.each do |pins|
  game.roll(pins)
  game.print_status
end

puts game.score
puts "Total score is as expected: #{expected_total_score == game.score}"


