class Timer
  attr_reader :seconds
  
  def seconds()
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end
  
  def time_string()
    return Time.at(@seconds).utc.strftime("%H:%M:%S")
  end

end
