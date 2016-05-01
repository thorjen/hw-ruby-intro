def max_2_sum?(array,num)
    my_bool = false
   for i in (0..array.length-1)
        my_num = array[i]
        for j in (i+1..array.length-1) do
        if my_num + array[j] == num then
            my_bool = true
        end
        end
   end
   return my_bool
end