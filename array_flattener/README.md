Turing Tech Challenge
Array Flattener

Imagine you have a deeply nested array, or multi-dimensional array, like this:

array_of_ints = [1, 2, 3, [[4], 5], [[[6]]]] array_of_strings = ["hi", "this is", [[["string"], "that is very"], [[[["nested"]]]]]] the contents of the array aren't important.

In Ruby and JS, we have built in methods and functions to flatten arrays into one dimension. For example, in Ruby:

=> [1, 2, 3, [[4], 5], [[[6]]]] [8] pry(main)> array_of_ints.flatten => [1, 2, 3, 4, 5, 6] and in JS:

arr1 [ 0, 1, 2, [ 3, 4 ] ] arr1.flat() [ 0, 1, 2, 3, 4 ] If we look at the docs for either of these, we notice that they are recursive by nature. Your goal is to recreate this functionality by writing a recursive function to accomplish this same thing. For example:

array_of_ints = [1, 2, 3, [[4], 5], [[[6]]]] => [1, 2, 3, [[4], 5], [[[6]]]] ruby_flattener(array_of_ints) => [1, 2, 3, 4, 5, 6] or in JS:

arr1 [ 0, 1, 2, [ 3, 4 ] ] flatten(arr1) [ 0, 1, 2, 3, 4 ] Instructions Copy this markdown and paste in your own, privte gist In your private gist, fill out the questions below Submit by the due time as instructed in Zoom Rewrite the question in your own words:

Answer: Remake array.flatten in Ruby.

What assumptions will you make about this problem if you cannot ask any more clarifying questions? What are your reasons for making those assumptions?

Answer: I'm assuming that the input will always be an array and that it could contain any number or elements both quantity and type.

What are your initial thoughts about this problem? (high level design, 2-3 sentences)

Answer: To me this sounds like a simple sift-with-accumulator problem.

How would you identify the elements of this problem? Answer: Searching of Data Sorting of Data Pattern Recognition

Which data structure(s) do you think you'll use? What pros/cons do you see with that choice?

Answer: Arrays

Write out a few lines of initial pseudocode: (mid-level design, NOT REAL CODE)

Answer: My initial thoughts are to set an accumulator and and iterate over each element in the main array, shoveling them into the accumulator, identify nested arrays and call method recursively on them.

Write out any implementation code OR link to repl

What is the Big O complexity of your solution?
