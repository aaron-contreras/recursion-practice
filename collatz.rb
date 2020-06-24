# frozen_string_literal: true

def collatz(number, steps = 0)
  return steps if number == 1

  steps += 1
  if number.even?
    collatz(number / 2, steps)
  else
    collatz(3 * number + 1, steps)
  end
end

# Test cases
puts collatz 1
puts collatz 2
puts collatz 3
puts collatz 4
puts collatz 5
puts collatz 6
puts collatz 7
puts collatz 8
puts collatz 15
puts collatz 27
puts collatz 50
