def sum_pairs(array, sum)
  results = []
  array.each_with_index do |int, index|
    array.delete(int)
    array.each_with_index do |next_int, next_index|
      if int + next_int == sum
        results << [int, next_int]
      end
    end
  end
  return results
end
