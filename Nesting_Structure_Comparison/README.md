CodeWars level 4 challenge

Complete the function/method (depending on the language) to return true/True when its argument is an array that has the same nesting structures and same corresponding length of nested arrays as the first array.

For example:

# should return true
[ 1, 1, 1 ].same_structure_as( [ 2, 2, 2 ] )
[ 1, [ 1, 1 ] ].same_structure_as( [ 2, [ 2, 2 ] ] )

# should return false
[ 1, [ 1, 1 ] ].same_structure_as( [ [ 2, 2 ], 2 ] )
[ 1, [ 1, 1 ] ].same_structure_as( [ [ 2 ], 2 ] )

# should return true
[ [ [ ], [ ] ] ].same_structure_as( [ [ [ ], [ ] ] ] );

# should return false
[ [ [ ], [ ] ] ].same_structure_as( [ [ 1, 1 ] ] )   

My favorite from others' solutions, essentially the same as mine but using one line block and ternary operator. I think its actually more readable and looks much cleaner
```
class Array
  def same_structure_as(other)
    return false unless other.is_a?(Array) && length == other.length
    each_with_index.all? { |e, i| e.is_a?(Array) ? e.same_structure_as(other[i]) : true }
  end
end
```
