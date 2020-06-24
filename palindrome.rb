def palindrome(word)
  return true if word.length < 2

  left_letter = word[0]
  right_letter = word[-1]
  if left_letter == right_letter
    palindrome word[1..-2]
  else
    false
  end
end

puts palindrome 'aaron'
puts palindrome 'racecar'

