#write your code here
def translate(string)
  concat = []   #Empty array to store 

  #Store each word as an element in array
  words = string.split(" ")

  words.map! do |s|
    #Find position of first vowel in word
    first_vowel = s.index(/[aeiouAEIOU]/)

    #Add prefix if first element is a vowel
    if first_vowel.nil? || first_vowel == 0
      s += "ay"
    else
      #Find next vowel if first vowel was 'u' preceded by 'q'
      if s[first_vowel] == "u" && s[first_vowel-1] == "q"
        first_vowel += 1
      end
      
      #Move initial consonants to end
      first_vowel -= 1

=begin
      #**Matches all last characters
      if s[s.length-1] != (/[A-Za-z0-9]/) && s[s.length-1] != (/(' ')/)
        puts s[s.length-1]
      end
=end

      s += "#{s[0..(first_vowel)]}ay"
      s = s.slice!((first_vowel+1)..(s.length))

      #Capitalize first letter if word was previously capitalized
      s.split("").each do |c|
        if c == c.capitalize
          s = s.downcase
          s = s.capitalize
        end
      end
    end

    #Store new word in array
    concat.push(s)
  end

  #Combine words and return string
  return concat.join(" ")
end