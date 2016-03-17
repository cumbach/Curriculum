def reverser(&block)
  string = block.call.split(" ")
  result = string.map do |x|
    x.reverse
  end
  result.join(" ")
end

def adder(num = 1, &block)
  num + block.call
end

def repeater(n = 1, &block)
  n.times do
    yield
  end
end



# n=0
# repeater(3) { n += 1 }
# puts n


#puts adder { 5 }
#puts reverser {"hello"}
