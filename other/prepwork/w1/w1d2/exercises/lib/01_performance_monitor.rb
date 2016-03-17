def measure(n = 1, &block)
  #opts = {Time.now}
  time_one = Time.now
  n.times do
    block.call
  end
  ( Time.now - time_one ) / n
  # 
  # unless n == 1
  #   elapsed_time
  # end
  #
  # average_time = elapsed_time / n



end
