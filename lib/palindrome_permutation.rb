def palindrome_permutation?(string)

  odd_num_chars = 0

  letters_count = Hash.new(0)

  string.each_char{|char| letters_count[char] += 1}

  letters_count.each_value do |val|
    odd_num_chars += 1 if val.odd?
    return false if odd_num_chars > 1
  end

  return true
end
