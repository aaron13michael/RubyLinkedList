class Node
  @value
  @next

  attr_accessor :next
  attr_accessor :value

  def initialize(n, val)
    @value = val
    @next = n
  end

end
