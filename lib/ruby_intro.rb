# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements. 
  # For an empty array it should return zero
  # YOUR CODE HERE
  if arr.length==0
    0
  else
    sum=0
    arr.each do |a|
      sum+=a
    end
    sum
  end
end


def max_2_sum arr
  # Define a method `max_2_sum(array)` which takes an array of integers as an argument and returns the sum of its two 
  # largest elements. For an empty array it should return zero. 
  # For an array with just one element, it should return that element.
  if arr.empty?
    0
elsif arr.length == 1
  arr[0]
  else
    my_sorted_arr = arr.sort
    my_max_2_sum = my_sorted_arr[my_sorted_arr.length-1]+ my_sorted_arr[my_sorted_arr.length-2]
    my_max_2_sum
  end
end

def sum_to_n? arr, n
  # Define a method sum_to_n?(array, n) that takes an array of integers and an additional integer, n, as arguments 
  # and returns true if any two elements in the array of integers sum to n. sum_to_n?([], n) 
  # should return false for any value of n, by definition
   my_bool = false
   for i in (0..arr.length-1)
        my_num = arr[i]
        for j in (i+1..arr.length-1) do
        if my_num + arr[j] == n
            my_bool = true
        end
        end
   end
   my_bool
end

# Part 2

def hello name
  # YOUR CODE HERE
  # Define a method `hello(name)` that takes a string representing a name and returns the string "Hello, " 
  # concatenated with the name.
  "Hello, #{name}"
end

def starts_with_consonant? s
  # Define a method `starts_with_consonant?(s)` that takes a string and returns true if it starts with a consonant and false 
  # otherwise. (For our purposes, a consonant is any letter other than A, E, I, O, U.) 
  # NOTE: be sure it works for both upper and lower case and for nonletters!
  s =~ /^[a-z&&[^aeiou]]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
