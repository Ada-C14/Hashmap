def permutations?(string1, string2)
  hash = Hash.new(0)
  string1.each_char { |char| hash[char] += 1 }

  string2.each_char do |char|
    return false if hash[char].nil?

    hash[char] -= 1
    hash[char] = nil if hash[char] == 0
  end

  return hash.values.all?(nil)
end