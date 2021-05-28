File.open('hits.txt') do |info|
  info.each do |line|
    song, group, year = line.split('/')
  
    puts %("#{song}", performed by #{group}, reached #1 in #{year})
  end
end

File.open('hits.txt') do |f|
  years_frecuency = f.reduce(Hash.new(0)) do |memo, line|
    year = line.split('/').last.chomp
    memo[year] += 1
    memo
  end.sort

  best_year = years_frecuency.max_by { |k, v| v }.first
  puts "#{best_year} was the best year for hit music between #{years_frecuency.first[0]}" \
    " and #{years_frecuency.last[0]}"
end
