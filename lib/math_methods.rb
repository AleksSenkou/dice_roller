module Math
  class << self
    def fact(n)
      (1..n).reduce(:*) || 1
    end

    def comb(n, k)
      fact(n) / (fact(k) * fact(n - k))
    end
  end
end
