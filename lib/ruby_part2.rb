def max_2_sum(array,num)
   for i in (0..array.length-1)
        my_num = array[i]
        for j in (i+1..array.length-1) do
            my_val = my_num + array[j]
        if my_num + array[j] == num then
            return true
        end
        end
   end
end

my_data = [-2,10,5,2]
my_num = 11

puts max_2_sum(my_data, my_num)