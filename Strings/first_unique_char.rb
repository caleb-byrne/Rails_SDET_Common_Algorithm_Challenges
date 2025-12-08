# Challenge: First Non-Repeating Character
# Find the first character in a string that does not repeat
# Example: "leetcode" => "l", "loveleetcode" => "v"

def first_unique_char(s)
  char_count = Hash.new(0)
  s.each_char do |key|
    char_count[key] += 1
  end
  puts char_count

  s.each_char do |key|
    return key if char_count[key] == 1
  end
  "no unique characters in the hash #{char_count}"
end

puts first_unique_char("this method will find the first character that is only represented once")