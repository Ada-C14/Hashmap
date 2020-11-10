# Design and implement a method that takes two integer arrays with unique values and returns their intersection in a new array.
# Note: Do not use the & operator.
# For example:
# intersection([2, 3, 4], [4, 5, 6]) => [4]
# intersection([50, 43, 25, 72], [25, 36, 43, 50, 80]) => [50, 25, 43]
# intersection([9, 30, 42], [56, 34, 90, 32]) => []
def intersection(list1, list2)
  lookup_hash = {}

  list1.each do |num|
    lookup_hash[num] = true
  end

  intersection = []

  list2.each do |num|
    if lookup_hash[num]
      intersection << num
    end
  end

  return intersection
end