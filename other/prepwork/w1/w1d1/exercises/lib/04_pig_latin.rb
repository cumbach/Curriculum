require 'byebug'


def translate(string) #split into two methods, use #{} instead
  #debugger
  words = string.split(" ")

  final = words.map do |word|
    translated(word)
  end

  final.join(" ")
end

#puts translate("fdirst fapiie")
def translated(word_method)
  vowels = ["a", "e", "i", "o", "u"]
  newword = word_method.split("")

  until vowels.include?(newword.first)
    if newword.first == "q"
      first_two = newword.shift(2)
      newword.push(first_two)
      break
    end
    first_let = newword.shift
    newword.push(first_let)
  end
  newword.join("")} + "ay"

end
