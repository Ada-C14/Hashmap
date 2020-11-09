def palindrome_permutation?(string)
  return true if string.empty?

  letters_count = {}
  letters_count.default = 0

  string.each_char do |letter|
    letters_count[letter] += 1
  end

  odd = 0
  string.each_char do |letter|
    if letters_count[letter] % 2 != 0
      odd += 1
    end
    return false if odd > 1
  end
  return true
end
