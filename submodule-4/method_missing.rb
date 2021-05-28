class Person
  PEOPLE = []
  attr_reader :name, :hobbies, :friend

  def initialize(name)
    @name = name
    @hobbies = []
    @friends = []
    PEOPLE << self
  end

  def has_hobby(hobby)
    @hobbies << hobby
  end

  def has_friend(friend)
    @friends << friend
  end

  def self.method_missing(m, *args)
    method_name = m.to_s

    if method_name.start_with?('all_with_')
      attr_name = method_name[9..-1]

      if Person.public_method_defined?(attr_name)
        selected_people = PEOPLE.find_all do |person|
          person.send(attr_name).include?(args[0])
        end

        selected_people.map { |person| "#{person.name} is into #{person.hobbies.join(', ')}" }
      else
        raise ArgumentError, "Can't find #{attr_name}"
      end
    else
      super
    end
  end
end

e = Person.new 'Eric B.'
r = Person.new 'Rakim'
e.has_friend(r)
e.has_hobby('cycling')
r.has_hobby('drums')
puts Person.all_with_hobbies('cycling')
