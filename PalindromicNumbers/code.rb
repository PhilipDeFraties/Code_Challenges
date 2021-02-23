# def find_pals(start, limit)
#   results = []
#   pal = start + (start.digits.join.to_i)
#   if pal < limit
#     if pal.digits == pal.digits.reverse
#       results << start
#     end
#     start += 1
#     find_pals(limit)
#   end
#   return results
# end

# def find_pals(limit)
#   results = []
#   start = 0
#   pal = 0
#   bind
#   until pal > limit
#     pal = start + (start.digits.join.to_i)
#     if pal.digits == pal.digits.reverse
#       results << start
#     end
#     start += 1
#   end
#   return results
# end

def find_ints(min)
  results = []
  start = 0
  until results.count == 25
    check_pal(start, min, results)
    start += 1
  end
  return results
end

def check_pal(start, min, results)
  pal = start + (start.digits.join.to_i)
  if pal > min && pal.digits == pal.digits.reverse
    results << start
  end
end
