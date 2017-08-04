class Timer
  #write your code here
  attr_writer :seconds
  
  def seconds
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    minutes = @seconds % 3600 / 60
    seconds = @seconds % 60
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end 

  
  def padded(time)
    if time < 10
      "0#{time}"
    else
      "#{time}"
    end
  end

end