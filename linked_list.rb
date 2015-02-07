require_relative 'node'

class LinkedList
  @head
  EMPTY_NODE = Node.new(nil, nil)

  def initialize
    @head = EMPTY_NODE
  end

  def push(val)
    #push an element onto the top of the list
    newhead = Node.new(@head, val)
    @head = newhead
  end

  def pop
    #pop off the top element
    val = @head.value()
    @head = @head.next
    return val
  end

  def append(val)
    #if the list is empty
    @head = Node.new(EMPTY_NODE, val) if @head == EMPTY_NODE

    walker = @head
    walker = walker.next until walker.next == EMPTY_NODE
    walker.next = Node.new(EMPTY_NODE, val)
  end

  def length
    length = 0
    walker = @head
    while walker != EMPTY_NODE do
      walker = walker.next
      length += 1
    end
    return length
  end

  def to_s
    walker = @head
    nString = ""
    while walker != nil do
      nString += walker.value.to_s + " "
      walker = walker.next
    end

    return nString
  end

end