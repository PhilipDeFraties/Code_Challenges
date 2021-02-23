The number 47 has an interesting characteristic.

If you take the number, plus its reverse (47 => 74) and then add them together to a number (47+74=121) the resulting sum is a palindrome

Starting at 0, find the first 25 numbers that have this same characteristic as 47, but limit it to where the palindrome is greater than 1000.

Collect the results in an array. Be sure that you're collecting the interesting numbers like 47, not the palindromic sums.

Bonus points if you can do this without converting numbers to strings/arrays.

Limit your online searches to core language documentation only.

Instructions Copy this markdown and paste in your own, private gist In your private gist, fill out the questions below Submit by the due time as instructed in Zoom Rewrite the question in your own words: What assumptions will you make about this problem if you cannot ask any more clarifying questions? What are your reasons for making those assumptions? What are your initial thoughts about this problem? (high level design, 2-3 sentences) How would you identify the elements of this problem? Searching of Data Sorting of Data Pattern Recognition Build/Navigate a Grid Math Language API knowledge Optimization Which data structure(s) do you think you'll use? What pros/cons do you see with that choice?

I will use recursion with conditionals to repeat the function. I do not know if this would be the best or most efficient way, perhaps if I worked out a solution quickly I would check the with a benchmark then find another solution.

Write out a few lines of initial pseudocode: (mid-level design, NOT REAL CODE) set a variable as the starting number set to 0

add that number to its reverse, check if result is equal when reversed, if equal shovel into accumulator, if less than 1000, set start variable equal to +1 and call same method again.

Write out any implementation code OR link to repl What is the Big O complexity of your solution?
