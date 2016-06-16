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
  
  # a-z means must be a letter and aeiou means must start with on of aeiou, i means case insensitive
  s =~ /^[a-z&&[^aeiou]]/i
  
end

def binary_multiple_of_4? s
  # Define a method `binary_multiple_of_4?(s)` that takes a string and returns true if the string represents a binary number 
  # that is a multiple of 4. NOTE: be sure it returns false if the string is not a valid binary number!
  # Check if binary number Alternatively \A[01]+\Z
  return false unless s =~ /^[01]+$/
  "#{s}".to_i(2)%4 == 0
end

# Part 3/
class BookInStock
# Define a class `BookInStock` which represents a book with an ISBN
#number, `isbn`, and price of the book as a floating-point number,
#`price`, as attributes.  

#The constructor should accept the ISBN number
#(a string, since in real life ISBN numbers can begin with zero and can
#include hyphens) as the first argument and price as second argument, and
#should raise `ArgumentError` (one of Ruby's built-in exception types) if
#the ISBN number is the empty string or if the price is less than or
#equal to zero.  Include the proper getters and setters for these
#attributes.

#constructor
def initialize(isbn,price)
  raise ArgumentError if isbn.empty?
  raise ArgumentError if price <= 0
  @isbn = isbn
  @price = price
end

#isbn getter
def isbn
  @isbn
end

#isbn setter
def isbn=(new_isbn)
  raise ArgumentError if isbn.empty?
  @isbn = new_isbn
end

#price getter
def price
  @price
end

#price setter
def price=(new_price)
  raise ArgumentError if price <= 0
  @price = new_price
end

#Include a method `price_as_string` that returns the price of
#the book formatted with a leading dollar sign and two decimal places, that is, a price
#of 20 should format as "$20.00" and a price of 33.8 should format as
#"$33.80".
def price_as_string
  "$#{sprintf('%.2f', price)}"
  format("$%.2f",price)
end
end


