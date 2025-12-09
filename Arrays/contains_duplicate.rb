require 'set'
# Challenge: Contains Duplicate
# Return true if array contains any duplicate values
# Example: [1, 2, 3, 1] => true

def contains_duplicate?(nums)
  seen = Set.new

  nums.each do |num|
    return true if seen.include?(num)
    seen.add(num)
  end
  false
end

puts contains_duplicate?([1, 2, 3, 1])
puts contains_duplicate?([1, 2, 3, 5, 6])
