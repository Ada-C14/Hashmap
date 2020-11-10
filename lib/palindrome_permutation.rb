
# Time complexity: O(n)
# Space complexity: O(n)

def palindrome_permutation?(string)
    hash = build_hash(string)
    count_odd = 0
    hash_value_array = hash.values
    
    hash_value_array.each do |value|
        if value % 2 != 0
            count_odd += 1
        end
    end

    # A palindrome allows 1 or less single character
    if count_odd > 1
        return false
    end
    return true
end 

def build_hash(string)
    hash = {}
    string.each_char do |c|
        if hash[c].nil?
            hash[c] = 1
        else
            hash[c] += 1
        end
    end
    return hash
end

string = "racecar"
puts palindrome_permutation?(string)