### Task description:
- calculate the probability of rolling a given amount on dices
- for 100 dices time of code execution should be less then 1 sec

#### Conditions:
- N - number of dices
- M - amount

#### Examples:
- N = 2, M = 1 => P = 0
- N = 2, M = 2 => P = 1/36
- N = 5, M = 9 => P = 70/7776

#### Usage:
```ruby
Rolling.new(N, M)

Rolling.new(3, 2).run        # 0 %
Rolling.new(3, 9).run        # 11.574 %
Rolling.new(10, 16).run      # 0.0082 %
Rolling.new(100, 200).run    # 1.1856319413140785e-18 %
Rolling.new(300, 500).run    # 3.0380067285316406e-88 %
```
