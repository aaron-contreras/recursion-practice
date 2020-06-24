def sum_upto(number)
  return 1 if number == 1

  sum_upto(number - 1) + number
end

puts sum_upto 15
