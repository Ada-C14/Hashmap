
def permutations?(string1, string2)
  hash1 = character_count(string1)
  hash2 = character_count(string2)

  return false unless hash1.length == hash2.length

  hash1.each do |letter, total|
    return false unless hash1[letter] == hash2[letter]
  end

  return true
end

def character_count(string)
  count = Hash.new

  string.each_char do |char|
    char_count = count[char]
    if char_count.nil?
      char_count = 1
    else
      char_count += 1
    end
    count[char] = char_count
  end

  return count
end