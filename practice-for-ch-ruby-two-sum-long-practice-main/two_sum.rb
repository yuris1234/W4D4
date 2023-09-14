def bad_two_sum?(arr, target_sum) # O(n**2)
    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
            if idx2 > idx1 
                return true if ele1 + ele2 == target_sum
            end
        end
    end
    false             
end

def okay_two_sum(arr, target_sum) # O(n log n) + O(n) => O(n log n)
    arr = merge_array(arr)
    i = 0
    j = arr.length - 1
    while i < j
        sum = arr[i] + arr[j]
        return true if arr[i] + arr[j] == target_sum 
        if sum > target_sum
            j -= 1
        else
            i += 1
        end
    end
    false
end

def merge_array(arr)
    return arr if arr.length <= 1

    middle = arr.size / 2
    left = arr[0...middle]
    right = arr[middle..-1]

    merge(merge_array(left), merge_array(right))
end

def merge(left, right)
    holder = []
    until left.empty? || right.empty?
        holder << (left[0] > right[0] ? right.shift : left.shift)
    end
    holder + left + right
end

arr = [0, 1, 5, 7]
# arr = [3,5,1,4,7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false
# p okay_two_sum(arr, 5)

def best_two_sum(array,target_sum)
    hash = Hash.new(0)

    array.each do |ele|
        if ele == target_sum
            hash[ele] = 0
        elsif ele > target_sum 
            hash[ele] = ele - target_sum
        else
            hash[ele] = target_sum - ele
        end
    end

    array.each do |ele|
        if ele == target_sum
            hash[0]
    end
end