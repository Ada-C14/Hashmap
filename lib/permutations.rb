# time complexity: O(n)
# space complexity: O(n)

def permutations?(string1, string2)
  return false if string1.length != string2.length

  new_hash = Hash.new(0)

  string1.each_char do |letter|
    new_hash[letter] += 1
  end

  string2.each_char do |letter|
    if new_hash.has_key?(letter)
      new_hash[letter] -= 1
    else
      return false
    end
  end

  new_hash.values.each do |num|
    return false if num != 0
  end

  return true
end
