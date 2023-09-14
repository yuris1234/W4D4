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