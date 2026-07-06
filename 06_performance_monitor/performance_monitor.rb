def measure( n=1 )
  if n == 1
    start_time = Time.now
    yield
    stop_time = Time.now
    stop_time - start_time
  else
    total_time=0
    n.times do
      start_time = Time.now
      yield
      stop_time = Time.now
      total_time += (stop_time - start_time)
    end
    total_time / n
  end
end