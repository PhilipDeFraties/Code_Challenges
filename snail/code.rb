def snail(array)
  new_array = []
  until array.empty?
    new_array << array.shift
    array.each { |array| new_array << array.pop }
    new_array << array.pop.reverse unless array.empty?
    array.reverse.each { |array| new_array << array.shift }
  end
  return new_array.flatten
end
