
def palindrome_permutation?(string)
  hash = {}

  string.length.times do |index|
    letter = string[index]
    if hash.keys.include? letter
      hash[letter] += 1
    else
      hash[letter] = 1
    end
  end

  ones = hash.values.count(1)
  twos = hash.values.count(2)

  return ones <= 1 && twos + ones == hash.length # kind of a weird solution...
end # method