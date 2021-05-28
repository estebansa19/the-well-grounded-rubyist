puts "Reading Fahrenheit temperature value from data file... Saving result to output file 'temp.out'"
fahrenheit = File.read('temp.data').to_i
celsius = (fahrenheit - 32)  * 5 / 9
puts "Saving result to output file 'temp.out'"
new_file = File.new('temp.out', 'w')
new_file.puts celsius
new_file.close
