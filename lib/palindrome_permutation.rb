
def palindrome_permutation?(string)
  hash_table = Hash.new(0)
  string.each_char do |char|
    hash_table[char] += 1
  end
  
  if string.length % 2 == 0
    if hash_table.values.all?{|val| val % 2 == 0}
      return true
    else
      return false
    end
  end

  if string.length % 2 != 0
    hash_table.delete_if {|key, value| value % 2 == 0 } 
    if hash_table.length != 1
      return false
    else
      return true
    end
  end
end
