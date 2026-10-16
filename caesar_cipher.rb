# Implement a Caesar Cipher that takes in a string and the shift factor and then
# outputs the modified string using a right shift.

def caesar_cipher(string, shift_factor = 1)
  modified_string = ""
  alphabet_size = 26
  downcase_initial_ord = 97

  string.each_char do |char|
    if char.match?(/[a-zA-Z]/)
      is_lowercase = char == char.downcase

      char = char.downcase
      char_pos = char.ord - downcase_initial_ord
      new_char_pos = (char_pos + shift_factor) % alphabet_size
      new_char = (new_char_pos + downcase_initial_ord).chr

      modified_string << (is_lowercase ? new_char : new_char.upcase)
    else
      modified_string << char
    end
  end

  modified_string
end

p caesar_cipher("What a string!", 5)

#=> caesar_cipher("What a string!", 5) --> "Bmfy f xywnsl!"