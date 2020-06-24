def append(array, number)
  if number.zero?
    array << 0
  else
    array << number  
    append(array, number - 1)
  end
end

def reverse_append2(array, number)
  0.upto(number) { |n| array << n }
  array
end

def reverse_append(array, number)
  return array if number.negative?

  reverse_append(array, number - 1)
  array << number
end

p reverse_append [], -1
p reverse_append [], 0
p reverse_append [], 1
p reverse_append [], 2
