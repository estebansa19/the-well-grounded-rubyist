module Stacklike
  def stack
    @stack ||= []
  end

  def add_to_stack(element)
    stack.push(element)
  end

  def take_from_stack
    stack.pop
  end
end
