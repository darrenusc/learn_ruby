# write your code here
class Book
  attr_accessor :title

  def title=(new_title)
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
    
    # Capitalize all words except litte_words
    words = new_title.split.each do |s| 
        s.capitalize! unless little_words.include?(s)
    end
    # Capitalize first word if it was in little_words
    words[0].capitalize!
    
    @title = words.join(" ")
  end

end