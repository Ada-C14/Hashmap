
def palindrome_permutation?(string)
  letters = string.split("")
  count = Hash.new(0)
  odd = 0

  letters.each do |letter|
    count[letter] += 1
    odd += (count[letter] % 2 == 1 ? 1 : -1)
  end

  return odd <= 1
end
