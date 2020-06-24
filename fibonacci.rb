def fib(n)
  return n if n.zero? || n == 1

  fib(n-1) + fib(n-2)
end

puts fib 0
