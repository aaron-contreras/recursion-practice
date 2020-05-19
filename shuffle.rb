def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.empty?
    return sorted_array
  end
  random_pick = rand(unsorted_array.length)
  sorted_array.push(unsorted_array[random_pick])
  unsorted_array.delete_at(random_pick)
  recursive_sort unsorted_array, sorted_array
end

p sort(['Liliana', 'Vera', 'Aaron', 'Sahid'])