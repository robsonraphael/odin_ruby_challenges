def caesar_cipher(string, number = 3)
  cipher = Array.new
  palavra = Array.new
  alphabet = ("a".."z").to_a

  string.downcase.strip.split(//).each do |char|
    alphabet.each_with_index {|letter, index| cipher << index - number if letter == char}
  end

  cipher.each do |code|
    palavra << alphabet[code]
  end

  puts palavra.join.capitalize
end

caesar_cipher('norte', 5)
