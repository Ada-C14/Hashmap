def permutations?(string1, string2)
  return true if string1.empty? && string2.empty?
  return false if string1.length != string2.length

  letters_count = {}
  letters_count.default = 0

  string1.each_char do |letter|
    letters_count[letter] += 1
  end

  string2.each_char do |letter|
    if letters_count[letter] > 0
      letters_count[letter] -= 1
    else
      return false
    end
  end
  return true
end