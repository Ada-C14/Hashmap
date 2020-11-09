def palindrome_permutation?(string)
  # array = string.split(//)
  # hash = {}
  #
  # array.each do |element|
  #   hash.include? element ? hash[element] += 1 : hash[element] = 1
  # end
  #
  # repeat_element = 0
  # hash.each_value do |element|
  #   repeat_element += 1 if element % 2 != 0
  # end
  #
  # odd > 1 ? false : true
  #
  # return true
  #
  array = string.split(//)
  hash = Hash.new(0)

  array.each do |char|
    hash.include? char ? hash[char]+=1 : hash[char] = 1
  end

  num_letters = 0
  hash.each_value do |v|
    num_letters += 1 if v % 2 != 0
  end
  num_letters > 1 ? false : true
end
 # method
