def sort unsorted_array
  dictionary_sort unsorted_array, []
end

def dictionary_sort unsorted_array, sorted_array
  return sorted_array if unsorted_array.empty?

  next_word = unsorted_array.reduce do |first_in_dictionary, current|
    if current.downcase < first_in_dictionary.downcase
      first_in_dictionary = current
    end
    first_in_dictionary
  end

  sorted_array.push(next_word)
  unsorted_array.delete_at(unsorted_array.find_index next_word)
  dictionary_sort unsorted_array, sorted_array
end

p sort (['Alcatraz', 'aaron', 'aaron', 'Abnormal'])