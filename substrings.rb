#Implement a method #substrings that takes a word as the first argument 
# and then an array of valid substrings (your dictionary) as the second 
# argument. It should return a hash listing each substring (case insensitive) 
# that was found in the original string and how many times it was found.

dictionary = %w(below down go going horn how howdy it i low own part partner sit)

def substrings(string, dictionary)
  normalized_string = string.downcase

  dictionary.each_with_object({}) do |word, result|
    matches = normalized_string.scan(word).size
    result[word] = matches if matches > 0
  end
end


p substrings("Howdy partner, sit down! How's it going?", dictionary)