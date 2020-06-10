time_now = Time.now
10000000.times do
  5.odd?
end
pp (Time.now - time_now)

time_now = Time.now
10000000.times do
  5%2 == 1
end
pp (Time.now - time_now)
