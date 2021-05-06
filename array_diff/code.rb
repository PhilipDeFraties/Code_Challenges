def array_diff(arr1,arr2)
  arr2.each {|el| arr1.delete(el)}
  arr1
end
