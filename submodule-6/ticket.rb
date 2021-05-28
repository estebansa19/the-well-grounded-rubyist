class Ticket
  attr_accessor :name, :venue, :date

  def initialize(name, venue, date)
    @name = name
    @venue = venue
    @date = date
  end

  def ===(other_ticket)
    self.date == other_ticket.date
  end
end

class TicketComparer
  def self.compare(ticket1, ticket2, ticket3)
    case ticket1
    when ticket2
      puts 'Same location as ticket2!'
    when ticket3
      puts 'Same location as ticket3!'
    else
      puts 'No match :('
    end
  end
end

ticket1 = Ticket.new('ticket1', 'Poblado', '07/08/18')
ticket2 = Ticket.new('ticket2', 'Medellín City', '07/08/18')
ticket3 = Ticket.new('ticket3', 'Poblado', '07/08/21')
puts "#{ticket1.name} is for an event on: #{ticket1.date}"

TicketComparer.compare(ticket1, ticket2, ticket3)
