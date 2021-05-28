require 'socket'

s = TCPServer.new 3939

# while true
#   conn = s.accept
#   conn.print "Hi, what's your name? "
#   name = conn.gets.chomp
#   conn.puts "Hi, #{name}. Here's the date."
#   conn.puts `date`
#   conn.close
# end
  
# Para hacer que no sea IO blocking

while (conn = s.accept)
  Thread.new(conn) do |c|
    c.print "Hi, what's your name? "
    name = c.gets.chomp
    c.puts "Hi, #{name}. Here's the date."
    c.puts `date`
    c.close
  end
end

        room.room_type == room_type && room.name == name && room.floor == floor &&
          room.amenities == amenities && room.observations == observations &&
          room.minimum_rate == minimum_rate
