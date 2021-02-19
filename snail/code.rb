def snail(input_array)
  new_array = []
  until new_array.flatten.length == input_array.flatten.length
    new_array << input_array.shift
    input_array.each {|array| new_array << array.pop } unless input_array.empty?
    new_array << input_array.pop.reverse unless input_array.empty?
    if input_array.empty?
      break
    else
      input_array.reverse.each do |array|
        new_array << array.shift
      end
    end
  end
  return new_array.flatten
end
