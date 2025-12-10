require 'set'
# Challenge: Contains Duplicate
# Return true if array contains any duplicate values
# Example: [1, 2, 3, 1] => true

def contains_duplicate?(nums)
  sorted = nums.sort

  sorted.each_with_index do |num, index|
    return true if index < sorted.length - 1 && sorted[index] == sorted[index + 1]
  end
  false
end

puts contains_duplicate?([1, 2, 3, 1])
puts contains_duplicate?([1, 2, 3, 5, 6])
