#write your code here
def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, n=2)
  concat = string
  (n-1).times do
    concat += " #{string}"
  end
  return concat
end

def start_of_word(string, i)
  string[0..(i-1)]
end

def first_word(string)
  words = string.split(" ")
  return words[0]
end

def titleize(string)
  little_words = [#articles
                  "a", "an", "the", 
                  #simple prepositions
                  "about", "above", "across", "after", "against", "along", "among", "around", "as", "at",
                  "before", "behind", "below", "beneath", "beside", "between", "beyond", "by", "concerning", "despite", 
                  "down", "during", "except", "excepting", "for", "from", "in", "inside", "into", "like", 
                  "near", "next", "of", "off", "on", "onto", "out", "outside", "over", "past", 
                  "regarding", "round", "since", "through", "throughout", "till", "to", "toward", "under", "underneath", 
                  "unlike", "until", "up", "upon", "with", "within", "without", 
                  #conjunctions
                  "and", "but", "or", "nor", "so", "yet"]

  words = string.split(" ")
  string = words.each_index do |i|
    if not(little_words.include?(words[i])) or i == 0
      words[i].capitalize!
    end
  end
  return string.join(" ")
end