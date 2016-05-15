# YOUR CODE HERE
require 'benchmark'

def fibonacci(n)
  if n == 1 || n == 2
    1
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

Benchmark.bm do |x|
  x.report { fibonacci(1) }
  x.report { fibonacci(2) }
  x.report { fibonacci(3) }
  x.report { fibonacci(4) }
  x.report { fibonacci(5) }
  x.report { fibonacci(6) }
  x.report { fibonacci(7) }
  x.report { fibonacci(8) }
  x.report { fibonacci(15) }
end
