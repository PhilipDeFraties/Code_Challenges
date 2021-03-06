def array_flattener(array, acc=[])
  array.each{|e| e.class == Array ? array_flattener(e,acc) : acc.push(e) }
  return acc
end
