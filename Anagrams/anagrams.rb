def first_anagram?(str1,str2)
    (0...str1.length).each do |i|
        subset = str1.chars.permutation(i+1).to_a
        return true if subset.any? {|sub| sub.join("") == str2}
    end
    return false
end
    
p first_anagram?('cat','ta')

def second_anagram?(str1,str2)
    str2 = str2.chars
    str1.each_char do |char|
        if str2.include?(char)
            idx = str2.index(char)
            str2.delete_at(idx)
        else 
            return false
        end
    end
    return true if str2.join("") == ""
end

p second_anagram?('cat','tac')