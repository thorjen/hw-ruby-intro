def sum(array)
  # Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements. 
  # For an empty array it should return zero
  # YOUR CODE HERE
  my_sum = array.inject(0) {|sum, i|  sum + i }
  return my_sum
end

def max_2_sum(array)
  # Define a method `max_2_sum(array)` which takes an array of integers as an argument and returns the sum of its two 
  # largest elements. For an empty array it should return zero. 
  # For an array with just one element, it should return that element.
  if array.empty? then
    puts "I am nothing!"
    return 0
    elsif array.length == 1 then
    puts "I have just one element, dammit!"
      return array[0]
    else
      puts "I am complete, Jadda!"
      my_sorted_arr = array.sort
      my_max_2_sum = my_sorted_arr[my_sorted_arr.length-1]+ my_sorted_arr[my_sorted_arr.length-2]
      return my_max_2_sum
  end
end



raise 'max_2_sum([3,4,1,2]) != 7' unless max_2_sum([3,4,1,2]) == 7
raise 'max_2_sum([]) != 0' unless max_2_sum([]) == 0
raise 'max_2_sum([2]) != 2' unless max_2_sum([2]) == 2

def sum_to_n?(array, n)
  # Define a method `sum_to_n?(array, n)` that takes an array of integers and an additional integer, n, as arguments 
  # and returns true if any two elements in the array of integers sum to n. An empty array should sum to zero by definition.
end


