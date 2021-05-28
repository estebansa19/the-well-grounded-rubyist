puts "Reading Celsius temperature value from data file... Saving result to output file 'temp.out'"
celsius = File.read('temp.data').to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving result to output file 'temp.out'"
new_file = File.new('temp.out', 'w')
new_file.puts fahrenheit
new_file.close
