
puts 0
puts 1
prev_num, num  = 0, 1
i=1
while i<=18 do
    
  next_num = num + prev_num 
  prev_num, num =  num, next_num
  puts next_num
  
  i += 1
end