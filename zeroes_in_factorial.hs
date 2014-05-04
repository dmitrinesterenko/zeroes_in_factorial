-- Calculate the number of 0s at the end of a factorial

-- Zeroes works on a character array and returns a number
zeroes :: Num a => [Char] -> a
-- Empty set has zero 0s
zeroes [] = 0
-- Add one if the first element is a 0 and run the rest of the elements, if the first element is not 0 then return the empty set to stop computation
zeroes (x) = if head x == '0' 
    then 
       1 + zeroes (tail x) 
    else 
       zeroes []
-- Factorial of 0 is 1, the edge 
factorial 0 = 1
-- Factorial is the number multiplied by factorial of that number - 1 
factorial x = x * factorial (x-1) 
-- Combine the elements together. From inside out: compute factorial, convert to string, reverse the string and compute the 0s at the beginning of the string 
countZeroes x = zeroes (reverse (show (factorial x)))


