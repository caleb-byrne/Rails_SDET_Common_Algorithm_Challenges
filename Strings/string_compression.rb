# Challenge: String Compression
# Compress a string by replacing consecutive duplicate characters with the character and its count
# Example: "aabcccccaadddba" => "a2b1c5a2d3b1a1"

def compress_string(s)
  return "" if s.empty?
  result = ""
  index = 0

  while index < s.length
    current_char = s[index]
    count = 1

    while index + count < s.length && s[index + count] == current_char
      count += 1
    end

    result += current_char + count.to_s
    index += count
  end
  result
end

puts compress_string("aabcccccaadddba")