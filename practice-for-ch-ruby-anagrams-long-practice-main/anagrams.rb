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

