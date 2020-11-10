require 'set'

# Time complexity: O(n)
# Space complexity: O(n)

def intersection(list1, list2)

set = list1.to_set
return list2.filter {|num| set.include?(num)}

end

# def long_way_intersection(list1, list2)
#     # Build the hash
#     # hash = {}
#     set = Set.new
#     list1.each do |num|
#         set << num
#     end 

#     # list1.each do |num|
#     #     hash[num] = 'banana' # set hash key - the nums to value - banana
#     # end

#     new_list = []

#     list2.each do |num|
#         if set.include?(num)
#             new_list << num 
#         end
#     end

#     # list2.each do |num|
#     #     if hash[num] == 'banana'
#     #         new_list << num
#     #     end
#     # end

#     return new_list     
# end

# list1 = [1,2,3,4]
# list2 = [2,4,6,8]

# # puts intersection(list1, list2)
# puts long_way_intersection(list1, list2)

# expected_output = [2, 4]
# step 1: make hash
# hash = {1 => 0, 2 => 1, 3 => 2, 4 => 3}
# step2: create an empty list for all the intersections
# intersection = []
# step #3:
# for each value in list2, compare with hash keys 
# list2.each do |num|
# if hash.keys.include?(num)
# intersection << num
# end
# return intersection 
# return list2.filter {|num| hash.keys.include?(num)}

#Hashmap is constant time without collision, worst case O(n)
# [1,2,3].to_set => Set{1, 2 ,3}
# [1,1,2,3].to_set => Set{1, 2 ,3}
# list1 = [1,2,3,4]
# list2 = [2,4,6,8]
# value = 'turkey' => 5
# value => Hash(value)
# hash = 0x1234
# hashset:
# 0x1234: 'turkey'
# 0x1235: 123456
# 0x1236: 'chicken',
# 0x1238: 'peasant',
# 0x123A: 'duck',
# ary =['turkey', 'chicken', 'peasant', 'duck']
# hashset.include?('turkey')
# ary.include('pigeon') Hash('pigeon') => 0xffff
# Hash('turkey') = Hash(123456)
# hash = {1 => 0, 2 => 1, 3 => 2, 4 => 3}

