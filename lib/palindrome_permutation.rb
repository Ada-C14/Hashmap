
def palindrome_permutation?(string)
  even_and_odd = even_or_odd(string)

  odds = even_and_odd.select { |key, value| value == false }

  if odds.length > 1
    return false
  else
    return true
  end
 
end # method

def even_or_odd(string)
  tally = Hash.new

  string.each_char do |char|
    char_status = tally[char]
    case char_status
    when nil
      char_status = false
    when false
      char_status = true
    when true
      char_status = false
    end
    tally[char] = char_status
  end

  return tally
end

palindrome_permutation?("carrace")