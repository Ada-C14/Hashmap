# Design and implement a method that takes two integer arrays with unique values
# and returns their intersection in a new array.
#
#     Note: Do not use the & operator.
#
# intersection([2, 3, 4], [4, 5, 6]) => [4]
# intersection([50, 43, 25, 72], [25, 36, 43, 50, 80]) => [50, 25, 43]
# intersection([9, 30, 42], [56, 34, 90, 32]) => []


def intersection(list1, list2)
  return [] if list1.length == 0 || list2.length == 0

  hash = {}
  intersection_array = []

  list1.each do |num1|
    hash[num1] = true # could be 5 or carbs (any value that is truthy)
  end

  list2.each do |num2|
    if hash[num2] # bc I'm not doing a direct comparison (double equals to look at specific value), will automatically convert to boolean (Truthy or not)
      # If the value at num2 is truthy, it will return true
      # If it doesn't include that key, it will return nil, which is interpreted as falsy
      intersection_array << num2
    end
  end

  return intersection_array

end