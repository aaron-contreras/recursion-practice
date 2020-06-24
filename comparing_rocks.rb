rocks = 30.times.map {rand(200) + 1}
puts rocks.join(', ')
max_rock = 0

rocks.each do |rock|
  max_rock = rock if max_rock < rock
end

puts "Heaviest rock is: #{max_rock}"

puts "Heaviest rock is: #{rocks.inject { |heaviest_rock, rock| rock > heaviest_rock ? rock : heaviest_rock }}"

def find_heaviest_rock(array)
  return array.max if array.length < 3

  index_to_split_on = array.length / 2
  left_array = array[0...index_to_split_on]
  right_array = array[index_to_split_on..-1]

  [find_heaviest_rock(left_array), find_heaviest_rock(right_array)].max
end

puts "Heaviest rock is: #{find_heaviest_rock rocks}"

