require 'byebug'

class Temperature
  #debugger

  def initialize(options)
    if options[:f]
      @fahrenheit = options[:f]
    else
      @celsius = options[:c]
    end
  end

  def self.from_celsius(tempC)
    self.new(:c => tempC)
  end

  def self.from_fahrenheit(tempF)
    self.new(:f => tempF)
  end

  def in_celsius
    if @fahrenheit
      @celsius = (@fahrenheit - 32) * (5 / 9.0)
    else
      @celsius
    end
  end

  def in_fahrenheit
    if @celsius
      @fahrenheit = (@celsius * (9.0 / 5)) + 32
    else
      @fahrenheit
    end
  end

  def fahrenheit=(temp)
    @fahrenheit = temp
  end

  def celsius=(temp)
    @celsius = temp
  end


end


class Celsius < Temperature
  def initialize(temp)
    self.celsius = temp
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    self.fahrenheit = temp
  end
end

puts Temperature.new(:c => 100).in_fahrenheit
