def windowed_max_range(array,window_size)
    current_max_range = 0
    holder = []

    array.each_with_index do |ele,i|
        if holder.length < window_size
            holder << ele
        else
            difference = holder.max - holder.min
            if difference > current_max_range
                current_max_range = difference
            end
            holder = []
        end
    end
    
    current_max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8