require 'benchmark'
require_relative 'lib/rolling'

puts Rolling.new(3, 2).run        # 0 %
puts Rolling.new(10, 16).run      # 0.0082 %
puts Rolling.new(100, 200).run    # 1.1856319413140785e-18 %
puts Rolling.new(300, 500).run    # 3.0380067285316406e-88 %

Benchmark.bm(6) do |x|
  puts 'Dice | num'
  x.report('3    | 2   ') { Rolling.new(3, 2).run }
  x.report('10   | 16  ') { Rolling.new(10, 16).run }
  x.report('100  | 200 ') { Rolling.new(100, 200).run }
  x.report('300  | 500 ') { Rolling.new(300, 500).run }
  x.report('600  | 800 ') { Rolling.new(600, 800).run }
  x.report('1200 | 2000') { Rolling.new(1200, 2000).run }
end

#              user     system      total        real
# Dice | num
# 3    | 2     0.000000   0.000000   0.000000 (  0.000016)
# 10   | 16    0.000000   0.000000   0.000000 (  0.000054)
# 100  | 200   0.000000   0.000000   0.000000 (  0.004604)
# 300  | 500   0.030000   0.000000   0.030000 (  0.022820)
# 600  | 800   0.050000   0.000000   0.050000 (  0.051684)
# 1200 | 2000  0.620000   0.000000   0.620000 (  0.625823)
