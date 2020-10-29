def palindrome_permutation?(string)
  return true if string.length == 0
  hash = {}

  string.each_char do |char|
    unless hash.has_key?(char)
      hash[char] = 1
    else
      hash[char] += 1
    end
  end

  hash.delete_if { |key, value| hash[key] % 2 == 0}

  hash.length > 1? false : true
 
end # method
