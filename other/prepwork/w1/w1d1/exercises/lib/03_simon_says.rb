def echo(word) #good
  word
end

def shout(word) #good
  word.upcase
end

def repeat(giv_word, repeats = 2) #create filled array of arrays
  string = Array.new(repeats, giv_word)
  string.join(" ")
end

def start_of_word(word, let_idx) #ask for (0->number of letters) into word
  word[0...let_idx]
end

def first_word(string) #good
  string.split(" ").first
end

LITTLE_WORDS = ["and", "if", "else", "the", "over"] #switch to using map_with_index

def titleize(string)
  stringarr = string.split(" ")

  capwords = stringarr.map.with_index do |word, index|
    unless LITTLE_WORDS.include?(word) && index != 0
      word.capitalize
    else
      word
    end
  end
  capwords.join(" ")
end
