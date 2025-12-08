# Challenge: First Non-Repeating Character
# Find the first character in a string that does not repeat
# Example: "leetcode" => "l", "loveleetcode" => "v"

def first_unique_char(s)
  char_count = Hash.new(0)
  char_index = Hash.new(-1)

  # First pass: build both hashes
  s.each_char.with_index do |char, index|
    char_count[char] += 1
    char_index[char] = index if char_count[char] == 1
  end

  # After the loop, find the minimum index among chars with count=1
  min_index = char_index.select { |char, _| char_count[char] == 1 }.values.min

  # Return the character at that index, or nil if no unique char exists
  min_index == -1 ? nil : s[min_index]
end

puts first_unique_char("this method will find the first character that is only represented once")