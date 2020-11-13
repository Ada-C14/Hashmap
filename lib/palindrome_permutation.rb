def palindrome_permutation?(string)
  hash = Hash.new(0)

  string.each_char do |letter|
    hash[letter] += 1
  end

  if string.length.even?
    return hash.values.all? { |count| count % 2 == 0 }
  end

  odd_values = 0
  if string.length.odd?
    hash.each_value do |v|
      if v.odd?
        return false if odd_values > 0
        odd_values += 1
      end
    end
    return true
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
