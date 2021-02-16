RobotReturnChallenge
Tech challenge from mod 4, purpose was to learn to whiteboard/pseudo code

You are working with a computer simulation of a mobile robot. The robot moves on an plane, and its movements are described by a command string consisting of one or more of the following letters:

G instructs the robot to move forward one step L instructs the robot to turn left R instructs the robot to turn right The robot CANNOT go backwards - poor robot. After running all of the movement commands, you want to know if the robot returns to its original starting location.

For instance, the command GRGRGRG would make the robot return to its original starting location.

Instructions Copy this markdown and paste in your own, privte gist In your private gist, fill out the questions below Submit by the due time as instructed in Zoom Do not publish your code on a public repl.it or repo or other public means.

Rewrite the question in your own words: What assumptions will you make about this problem if you cannot ask any more clarifying questions? What are your reasons for making those assumptions?

Answer: I assume that the string will always consist of only the 3 given letters in caps, and that the string could be any length from 1 char to hundreds + I assume that there is no requirement for space/time but that more efficient will be preferrable. I assume that the expected return is a boolean determining if the bot ended up in its original position and not its actual position within a grid.

What are your initial thoughts about this problem? (high level design, 2-3 sentences) How would you identify the elements of this problem? Searching of Data Sorting of Data Pattern Recognition Build/Navigate a Grid Math Language API knowledge Optimization Which data structure(s) do you think you'll use? What pros/cons do you see with that choice?

Answer: First I would break the string into an array of each character so that I could iterate over each input.

I would create a hash with compass directions as keys and use their values as accumulators.

I would keep an integer accumulator to track the direction the bot is facing and use this number to determine which direction in the hash is increased by steps.

Write out a few lines of initial pseudocode: (mid-level design, NOT REAL CODE)

Create directions hash and set value of each to 0 Create orientation array containing directions as symbols starting with north then the rest in clockwise Seperate string into chars array Iterate over array For each determine if step or turn If turn rotate orientation array by 1 or -1 If step add one to the direction in hash that corresponds with the current first element in orientation array check if north and south value are equal and if east and west values are equal return yes, else no
