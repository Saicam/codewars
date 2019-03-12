# https://www.codewars.com/kata/the-supermarket-queue

def queue_time(customers, n)

  if customers.length == 0
    return 0
  end

  if customers.length <= n
    n = customers.length
    time_lap = customers.max
  else
    time_lap = customers.first(n).min
  end

  customers.each_index { |i| customers[i] -= time_lap if i < n }
  customers.delete_if { |x| x <= 0}

  if customers[0] != nil
    return time_lap + queue_time(customers, n)
  else
    return time_lap
  end

end

puts queue_time([22, 90, 10, 20, 38, 378, 963, 36, 93, 3, 70, 566, 61, 55, 9, 69, 6, 31, 142, 1, 85, 22, 7, 794, 10, 4, 49, 181, 6, 7, 5], 20)
