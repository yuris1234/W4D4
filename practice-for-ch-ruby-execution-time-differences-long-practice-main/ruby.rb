def my_min(list) # O(n**2)
    smallest = 0
    (0...list.length).each do |i|
        (i+1...list.length).each do |j|
            if list[i] < list[j] && list[i] > smallest 
                smallest = list[i]
            elsif list[j] < list[i] && list[j] > smallest 
                smallest = list[j]
            end
        end
    end
    smallest
end

def relist(list) # O(n)
    smallest = 0
    list.each do |ele|
        if ele > smallest 
            smallest = ele 
        end
    end
    smallest
end

def subsum(list) # O(n ** 2)
    max = 0
    (0...list.length).each do |i|
        (0...list.length).each do |j|
            if [list[i]..list[j]].sum > max
                max = [list[i]..list[j]].sum
            end
        end
    end
    max 
end

def faster_subsum(list)
    largest_sum = 0
    current_sum = 0

    list.each do |ele|
        current_sum += ele
        if current_sum < 0
            current_sum = 0
        elsif current_sum > largest_sum
            largest_sum = current_sum 
        end
    end
    
    if current_sum == 0
        largest_sum = list[0]
        list.each do |ele|
            if ele > largest_sum
                largest_sum = ele 
            end
        end
    end
    largest_sum
end

p faster_subsum([-1,-2,-3])
p faster_subsum([1,2,4,-1,5,1,-1,9,10])
p faster_subsum([100,200,-1,300,400])
p faster_subsum([1,-1,2,-1,2,0,0,9])
