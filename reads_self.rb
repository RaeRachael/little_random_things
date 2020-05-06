File.open(__FILE__, "r") do |file|
  file.readlines.each{ |line| STDOUT.puts "#{line}" }
end