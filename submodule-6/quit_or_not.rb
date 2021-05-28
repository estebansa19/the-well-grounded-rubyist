def quit_or_not
  print 'Exit the program? (yes or no):'
  answer = gets.chomp

  case answer
  when 'yes', 'y'
    puts 'bye!'
    exit
  when 'no'
    puts 'Ok, we will continue'
  else
    puts 'that is an unknown answer, assuming you meant no'
  end

  puts 'continuing with program...'
  quit_or_not
end

quit_or_not
