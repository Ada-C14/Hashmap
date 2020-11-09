# time complexity => O(n + m)
# Space complexity => O(n) ?

def permutations?(string1, string2)
  return false if string1.length != string2.length

  hash = {}

  string1.each_char do |char|
    hash[char] = true
  end

  string2.each_char do |char|
    if hash[char] != true
      return false
    end
  end
  return true
end

# p permutations?("Pizza", "Pasta")
# p permutations?("", "")
# p permutations?("heelo", "ehllo")