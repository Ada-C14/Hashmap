
def palindrome_permutation?(string)
  hash_table = {}
  populate_hash_table(hash_table, string.chars)
  hash_table.reject! { |key, value| value % 2 == 0 }
  if hash_table.length > 1
    return false
  else
    return true
  end
end

def populate_hash_table(hash_table, list)
  list.each do |element|
    if hash_table.include? element
      hash_table[element] += 1
    else
      hash_table[element] = 1
    end
  end
  return hash_table
end
