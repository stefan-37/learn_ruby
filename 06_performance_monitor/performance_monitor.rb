def measure(n = 1)
  if n <= 0
    puts "Invalid number of iterations. The program can't run #{n} times"
    return 0
  end
  total_time = 0
  n.times do
    start_time = Time.now
    yield
    stop_time = Time.now
    total_time += (stop_time - start_time) 
  end
  total_time / n
end