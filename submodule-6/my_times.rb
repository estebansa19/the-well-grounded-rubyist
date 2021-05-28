require_relative 'my_each'

class Integer
  def my_times
    c = 0

    until c == self
      yield c
      c += 1
    end

    self
  end

  # exercise
  def my_times_2
    (0...self).to_a.my_each { |n| yield(n) }
  end
end

10.my_times { |n| puts "iteration #{n}" }
5.my_times_2 { |n| puts "I'm on iteration #{n}!" }
