require "byebug"

def windowed_max_range(array,window_size) # O(n^2)
    current_max_range = 0
    holder = []

    i = 0
    while i <= array.length
        if holder.length < window_size
            holder << array[i]
            i += 1
        else
            difference = holder.max - holder.min
            if difference > current_max_range
                current_max_range = difference
            end
            holder.shift
        end
    end
    
    return current_max_range
end

# p windowed_max_range([1, 0, 2, 5, 4, 8], 2) # 4, 8
# p windowed_max_range([1, 0, 2, 5, 4, 8], 3) # 0, 2, 5
# p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # 2, 5, 4, 8
# p windowed_max_range([1, 3, 2, 5, 4, 8], 5) # 3, 2, 5, 4, 8

