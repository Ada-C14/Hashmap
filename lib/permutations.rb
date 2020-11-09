def permutations?(string1, string2)
  lookup_hash = Hash.new(true)
  return false if string1.length != string2.length
  return true if string1 == string2

  string1.each_char do |char|
    if lookup_hash[char]
      lookup_hash[char] = false
    else
      lookup_hash[char] = true
    end
  end

  string2.each_char do |char|
    if lookup_hash[char]
      lookup_hash[char] = false
    else
      lookup_hash[char] = true
    end
  end

  return true if lookup_hash.values.all?
  return false
end