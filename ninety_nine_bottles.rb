def sing number_of_bottles
  plural_bottles = "#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.\nTake one down and pass it around, #{number_of_bottles - 1} of beer on the wall.\n"
  two_bottles = "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n" 
  one_bottle = "1 bottles of beer on the wall, 1 bottles of beer.\nTake one down and pass it around, no more bottles of beer on the wall.\n"

  if number_of_bottles == 0
    "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
  elsif number_of_bottles == 1
    one_bottle + sing(number_of_bottles - 1)
  elsif number_of_bottles == 2
    two_bottles + sing(number_of_bottles - 1)
  else
    plural_bottles + sing(number_of_bottles - 1)
  end
end

puts sing 8188
