def palindrome_permutation?(string)
  hash = {}
  answer = []

  string.each_char do |char|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  string.each_char do |char|
    answer << char if hash[char].odd?
  end
  return answer.length <= 1
 
end
