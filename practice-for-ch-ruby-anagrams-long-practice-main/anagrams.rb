def first_anagram?(string1,string2) # O(n) + O(n!) + O(n) + O(n) => O(n!)
    split = string1.split("")
    perms = split.permutation.to_a

    perms = perms.map do |ele|
        ele.join('')
    end

    perms.include?(string2)
end

# p first_anagram?("gizmo", "sally")   
# p first_anagram?("elvis", "lives") 

def second_anagram?(string1, string2) # O(n) + O(n) + O(n) + O(n) => O(n)
    split = string2.split("")
    string1.each_char do |char|
        idx = split.find_index(char)
        split.delete_at(idx) if idx != nil
    end
    split.empty?
end

# p second_anagram?("gizmo", "sally")   
# p second_anagram?("elvis", "lives") 

def third_anagram?(string1,string2) # O(n log n)
    string1_sorted = string1.split('').sort
    string2_sorted = string2.split('').sort

    string1_sorted == string2_sorted
end

# p third_anagram?("gizmo", "sally")   
# p third_anagram?("elvis", "lives") 

def fourth_anagram?(string1,string2)
    # hash1 = Hash.new(0)
    # hash2 = Hash.new(0)

    # string1.each_char do |char|
    #     hash1[char] += 1
    # end

    # string2.each_char do |char|
    #     hash2[char] += 1
    # end

    # hash1 == hash2

    hash = Hash.new(0)

    
end

p fourth_anagram?("gizmo", "sally")   
p fourth_anagram?("elvis", "lives") 