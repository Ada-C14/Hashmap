# Time: O(n)
# Space: O(n)
def palindrome_permutation?(string)
  hash_table = Hash.new(0)
  string.each_char do |char|                              # Time: O(n)
    hash_table[char] += 1
  end                                                     # Space at the end of loop: O(n)                
  
  if string.length % 2 == 0                                # Time: O(1)
    if hash_table.values.all?{|val| val % 2 == 0}          # Time: O(n)? Space: O(n)? - because values creates an array?
      return true
    else
      return false
    end
  end

  if string.length % 2 != 0                                 # Time: O(1)
    hash_table.delete_if {|key, value| value % 2 == 0 }     # Time: O(n)? Space: O(1)
    if hash_table.length != 1
      return false
    else
      return true
    end
  end
end
