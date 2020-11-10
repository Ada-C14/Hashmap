#Design and implement a method that takes two integer arrays with unique values and returns their intersection in a new array.
 def intersection(list1, list2)
  return [] if list1.length == 0 || list2.length == 0

  hash_function = {}
  result = []

  list1.each do |int|
   hash_function[int] = false
  end

  list2.each do |int|
   if hash_function[int] == false
    result << int
   end
  end
  return result
  end

#Qstns:
# 1. are lists the same length?

#Pseudo Code
# What happens if one list or both lists are nil?
# Somehow, compare shortest list to longest list--helps with doing the least amount of comparisons--although trying to do this and it made the problemset much larger. Will not do for now.
