require 'colorize'
require_relative 'math_methods'

class Rolling
  def initialize(dice_count = 1, number = 1)
    self.dice_count = dice_count
    self.number = number
  end

  def run
    return 0 if not given_rank_contains_num?

    calculate_probability
  end

  def given_rank_contains_num?
    (@dice_count..@dice_count * 6).include? @number
  end

  private

  def calculate_probability
    coefficient = calculate_coefficient
    body = (1 / 6.0) ** @dice_count

    coefficient * body * 100
  end

  def calculate_coefficient
    sum_range = (@number - @dice_count) / 6
    (0..sum_range).inject(0) { |sum, k| sum + coefficient_root_for(k) }
  end

  def coefficient_root_for(k)
    (-1) ** k * Math.comb(@dice_count, k) *
                Math.comb(@number - 1 - 6 * k, @dice_count - 1)
  end

  def dice_count=(value)
    raise ArgumentError, 'Dice count should be int'.red if not value.is_a?(Integer)
    @dice_count = value
  end

  def number=(value)
    raise ArgumentError, 'Number should be int'.red if not value.is_a?(Integer)
    @number = value
  end
end
