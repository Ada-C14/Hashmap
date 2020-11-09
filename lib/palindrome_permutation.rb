#write a method which takes a string as an argument and 
#returns true if the letters could be re-arranged into a palindrome.

def palindrome_permutation?(string)
    if string.length == 0
        return true
    end
    #iterates through the string and add char as key, times met as value
    hash = {}
    string.length.times do |i|
      char = string[i]
      if hash[char]
      hash[char] += 1 
      else
      hash[char] = 1
      end
    end

    #iterates through hash, counts number of repeatitions 
    count = 0
    hash.each do |key, val|
        if val.odd?
            count += 1
        end
    end

    
    result = false
    #if the length of word is even and number of chars repeatition is even, 
    #that word is a variation of palindrom
    if string.length%2 == 0
        if count > 0
            result = false
        else
            result = true
        end
    else
        #it's allowed to have 1 char in odd word
        #result = count == 1
        if count == 1
            result = true
        else 
            result = false
        end   
    end
    return result
end # method
