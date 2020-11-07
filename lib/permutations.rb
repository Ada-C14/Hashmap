
def permutations?(string1, string2)

  hash_table = Hash.new(0)
  string1.each_char do |char|
    if hash_table[char]
      hash_table[char] += 1
    end
  end

  string2.each_char do |char|
    if hash_table[char] > 0
      hash_table[char] -= 1
    else
      return false
    end
  end

  hash_table.each_key do |key|
    return false if hash_table[key] != 0
  end
  return true
end