# Challenge: String Compression
# Compress a string by replacing consecutive duplicate characters with the character and its count
# Example: "aabcccccaadddba" => "a2b1c5a2d3b1a1"

def compress_string(s)
  return "" if s.empty?
  
  result = ""
  current_char = s[0]
  count = 0

  s.each_char do |char|
    if char == current_char
      count += 1
    else
      result += current_char + count.to_s
      current_char = char
      count = 1
    end
  end
  result += current_char + count.to_s
  result
end

puts compress_string("aabcccccaadddba")
