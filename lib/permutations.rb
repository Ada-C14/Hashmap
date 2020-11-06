
def permutations?(string1, string2)
  return false if string1.length != string2.length

  string1_letters = string1.split("")
  string2_letters = string2.split("")
  count_letters = Hash.new(0)

  string1_letters.each do |letter|
    count_letters[letter] += 1
  end

  string2_letters.each do |letter|
    if count_letters[letter]
      count_letters[letter] -= 1
      count_letters.delete(letter) if count_letters[letter] == 0
    else
      return false
    end
  end

  return count_letters.empty?
end
