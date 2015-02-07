class Node
  @value
  @next

  def initialize(n, val)
    @value = val
    @next = n
  end

  def next()
    return @next
  end

  def value()
    return @value
  end
end
