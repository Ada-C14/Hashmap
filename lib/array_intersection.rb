def intersection(list1, list2)
  result = []
  list1.each do |num1|
    list2.each do |num2|
      if num1 == num2
        result << num1
      end
    end
  end
  result
end