File.open("reads_self.rb", "r") do |file|
  file.readlines.each{ |line| STDOUT.puts "#{line}" }
end