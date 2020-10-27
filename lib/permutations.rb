def permutations?(string1, string2)
  word_hash = {}

  string1.split("").each do |letter|
    if word_hash[letter] == nil
      word_hash[letter] = 1
    else
      word_hash[letter] += 1
    end
  end

  string2.split("").each do |letter|
    if word_hash[letter] == nil
      return false
    else
      word_hash[letter] -= 1
    end
  end

  word_hash.each_value do |times|
    if times != 0
      return false
    end
  end

  return true
end
