# class Frame
#   def initialize
#     roll
#   end 

# end

class BowlingGame
	
  attr_accessor :frames

  def initialize
    self.frames = []
  end


  def roll(pins)
    self.frames << pins
    puts pins 
	end

  def score
    total_score = 0
    self.frames.each_with_index do |frame, i|
      total_score += frame[0] + frame[1].to_i

      if frames[(i-1)] == [10] or frames[(i - 2)] == [10]
        total_score += frame[0] + frame[1].to_i
      end
    end
    
    total_score
  end

  def print_status
    print "Still playing!"

  end

end




pins_knocked_down = [1, 4, 4, 5, 6, 4, 5, 5, 10, 0, 1, 7, 3, 6, 4, 10, 2, 8, 6]
expected_total_score = 133

game = BowlingGame.new
pins_knocked_down.each do |pins|
  game.roll(pins)
  game.print_status
end

puts game.score
puts "Total score is as expected: #{expected_total_score == game.score}"


