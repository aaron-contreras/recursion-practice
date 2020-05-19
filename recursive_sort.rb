def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.empty?
    return sorted_array
  end
  first_word = unsorted_array.min
  sorted_array.push(first_word)
  unsorted_array.delete_at(unsorted_array.index(first_word))
  recursive_sort unsorted_array, sorted_array
end

p sort(['Liliana', 'Vera', 'Aaron', 'Sahid'])