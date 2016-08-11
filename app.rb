require "pry"
require "colorize"

class Rolling
  def initialize(dice_count = 1, number = 1)
    self.dice_count = dice_count
    self.number = number
  end

  def run
    # check_number_probability
  end

  # def check_number_probability
  #   if not (@dice_count..@dice_count * 6).include? @number

  #   end
  # end

  private

  def dice_count=(value)
    raise ArgumentError, 'Dice count should be int'.red if not value.is_a?(Integer)
    @dice_count = value
  end

  def number=(value)
    raise ArgumentError, 'Number should be int'.red if not value.is_a?(Integer)
    @number = value
  end
end

puts Rolling.new(2, 1).run
