# Time: O(n+m)
# Space: O(n)
def permutations?(string1, string2)
  hash_table = Hash.new(0)
  string1.each_char do |char|                      # Time: O(n)
    if hash_table[char]
      hash_table[char] += 1
    end                                             # Space (hash table end of loop): O(n)
  end

  string2.each_char do |char|                       # Time: O(m)
    if hash_table[char] > 0                         # Time: hash lookup O(1)
      hash_table[char] -= 1
    else
      return false
    end                                               
  end                                                 # I believe the space complexity for the hash is O(1) after this loops completes

  hash_table.each_key do |key|                        # Time: O(n)
    return false if hash_table[key] != 0              # Time: hash lookup O(1)
  end
  return true
end