def snail(array)
  # creates clone of array so that original will be left untouched
  array_clone = input_array.map(&:clone)
  new_array = []
  until new_array.flatten.length == array_clone.flatten.length
    new_array << array_clone.shift
    array_clone.each {|array| new_array << array.pop } unless array_clone.empty?
    new_array << array_clone.pop.reverse unless array_clone.empty?
    if array_clone.empty?
      break
    else
      array_clone.reverse.each do |array|
        new_array << array.shift
        binding.pry
      end
    end
  end
  return new_array.flatten
end
