class Timer

  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = seconds
  end

  def padded(num)
    if num > 10
      "#{num}"
    else
      "0#{num}"
    end
  end

  def create_times(seconds)
    @hours = seconds / 3600
    @minutes = (seconds % 3600) / 60
    @minute_seconds = seconds % 60
  end

  def time_string
    create_times(seconds)
    "#{padded(@hours)}:#{padded(@minutes)}:#{padded(@minute_seconds)}"
  end



end

@timer = Timer.new
puts @timer.seconds
@timer.seconds = 4800
puts @timer.time_string
