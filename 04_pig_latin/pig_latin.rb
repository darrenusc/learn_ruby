#write your code here
def translate(string)
  words = string.split(" ")

  concat = []
  words.map! do |s|

    first_vowel = s.index(/[aeiou]/)
    if first_vowel.nil? || first_vowel == 0
      s += "ay"
    else
      if s[first_vowel] == "u" && s[first_vowel-1] == "q"
        first_vowel += 1
      end
      first_vowel -= 1
      s += "#{s[0..(first_vowel)]}ay"
      s.slice!(0..(first_vowel))
    end 
    
    concat.push(s)
  end

  return concat.join(" ")
end