def permutations?(string1, string2)

  string = merge_sort(string)
end

def merge_sort(list)
  if list.length == 1
    return list
  else
    middle = list.length / 2
    merge(merge_sort(list[0...middle]), merge_sort(list[middle..-1]))
  end

end

def merge(left, right)
  sorted_list = []
  until left.empty? || right.empty?
    if left[0] <= right[0]
      sorted_list << left.shift
    else
      sorted_list << right.shift
    end
  end

  return sorted_list + left + right
end
