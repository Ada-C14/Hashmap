def permutations?(string1, string2)
  return true if string1 == string2
  return false if string1.length != string2.length

  hash = Hash.new(0)

  string1.each_char do |letter|
    hash[letter] += 1
  end

  string2.each_char do |letter_2|
    if hash[letter_2] == 0
      return false
    end
    hash[letter_2] -= 1
  end

  return true
end

# Time complexity: O(n)
# Space complexity: O(n)
