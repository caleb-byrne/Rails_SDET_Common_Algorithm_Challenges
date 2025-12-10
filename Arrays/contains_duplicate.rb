require 'set'
# Challenge: Contains Duplicate
# Return true if array contains any duplicate values
# Example: [1, 2, 3, 1] => true

def contains_duplicate?(nums)
  seen = Hash.new

  nums.each do |num|
    return true if seen[num]
    seen[num] = true
  end
  false
end

puts contains_duplicate?([1, 2, 3, 1])
puts contains_duplicate?([1, 2, 3, 5, 6])
