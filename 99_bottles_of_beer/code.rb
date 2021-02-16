def sing
  num = 99
  array = []
  97.times do
    array << "#{num} bottles of beer on the wall, #{num} bottles of beer."
    num -= 1
    array << "Take one down and pass it around, #{num} bottles of beer on the wall."
  end
  array << "#{num} bottles of beer on the wall, #{num} bottles of beer."
  num -= 1
  array << "Take one down and pass it around, #{num} bottle of beer on the wall."
  array << "#{num} bottle of beer on the wall, #{num} bottle of beer."
  array << "Take one down and pass it around, no more bottles of beer on the wall."
  array << "No more bottles of beer on the wall, no more bottles of beer."
  array << "Go to the store and buy some more, 99 bottles of beer on the wall."
end
