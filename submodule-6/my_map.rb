class Array
  def my_map
    c = 0
    acc = []

    until c == size
      result = yield self[c]
      acc << result
      c += 1
    end

    acc
  end
end

puts [1,2,3].my_map { |n| n * 10 }
