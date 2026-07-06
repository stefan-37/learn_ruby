class Timer

  attr_reader :seconds

  SECONDS_PER_MINUTE = 60
  MINUTES_PER_HOUR = 60
  SECONDS_PER_HOUR = SECONDS_PER_MINUTE * MINUTES_PER_HOUR

  def initialize
    @seconds = 0
  end

  def seconds=(seconds)
    if seconds < 0
      puts "Invalid number of seconds. The timer can't be set to #{seconds} seconds"
      return
    end
    @seconds = seconds
  end

  def time_string
    
    hours = @seconds / SECONDS_PER_HOUR
    minutes = (@seconds % SECONDS_PER_HOUR) / SECONDS_PER_MINUTE
    seconds = @seconds % SECONDS_PER_MINUTE

    format("%02d:%02d:%02d", hours, minutes, seconds)
  end

end
