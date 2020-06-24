def beers_on_the_wall(number_of_bottles)
  return 'No more bottles of beer on the wall' if number_of_bottles.zero?
  
  "#{number_of_bottles} bottles of beer on the wall\n#{beers_on_the_wall(number_of_bottles - 1)}"
end


puts beers_on_the_wall(0)

