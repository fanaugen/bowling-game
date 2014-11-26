class Frame
  def full?
    false
  end
end


class BowlingGame
	
  def initialize
    @frames = []
    @score  = 0
  end

  def roll(pins)
    if @frames.empty? || @frames.last.full?
      @frames.push(Frame.new)
    end

    current_frame = @frames.last

    @score += pins

    # current_frame.add_score(pins)

    # if current_frame.strike?
    #   apply_bonus
    # end

	end

  def score
    @score
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


