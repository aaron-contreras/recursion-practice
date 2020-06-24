def flatten(array, result = [])
  
  array.each do |element|
    if element.instance_of? Array
      flatten element, result
    else
      result << element
    end
  end

  result
end

p flatten [[1, 2], 3, [3, 4], [[3, 4], 5]]
