class Integer
  def reverse
    number = self
    reversed = 0
    reversed, number = (reversed*10 + number % 10), number / 10 until number == 0
    reversed
  end
end

def find_ints(start, min_palindrome, target_count)
  results = []
  until results.count == target_count
    check_pal(start, min_palindrome, results)
    start += 1
  end
  return results
end

def check_pal(start, min, results)
  pal = start + (start.reverse)
  if pal > min && pal == pal.reverse
    results << start
  end
end
