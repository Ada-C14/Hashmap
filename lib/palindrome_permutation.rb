def palindrome_permutation?(string)
  return true if string.empty?

  lookup_hash = Hash.new(true)

  string.each_char do |char|
    if lookup_hash[char]
      lookup_hash[char] = false
    else
      lookup_hash[char] = true
    end
  end

  return true if lookup_hash.values.all?
  return true if lookup_hash.values.one?(false)
  return false
end
