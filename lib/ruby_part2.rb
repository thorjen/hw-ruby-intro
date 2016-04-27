def max_2_sum(array, num)
    puts array
if array.length <= 1 then
    return 0
else
   for i in 1...array.length
   if array[0]+array[i] == num then
       puts "Sum av #{array[0]} + #{array[i]} er #{num}"
       return true
   else array.shift
       puts "Next"
       max_2_sum(array, num)
   end
   end
end
end

#my_data = [1]
my_data = [4,4,1,1,3,6,5]
my_num = 7

puts max_2_sum(my_data, my_num)
