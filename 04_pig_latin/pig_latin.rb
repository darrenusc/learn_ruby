#write your code here
def translate(string)
  words = string.split(" ")
  #puts words
  concat = []
  words.map! do |s|
    first_vowel = s.index(/[aeiou]/)
    puts first_vowel

    if first_vowel.nil? or first_vowel == 0
      s += "ay"
    else
      first_vowel -= 1
      s += "#{s[0..(first_vowel)]}ay"
      s.slice!(0..(first_vowel))
    end 
    concat.push(s)
  end

  #puts concat
  return concat.join(" ")
end

#puts translate("banana")