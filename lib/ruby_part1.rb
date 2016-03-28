def sum(array)
  # Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements. 
  # For an empty array it should return zero
  # YOUR CODE HERE
  sum = array.inject(0) {|sum, i|  sum + i }
return sum
end
