require_relative 'node'

class LinkedList
  @head
  @length
  EMPTY_NODE = Node.new(nil, nil)

  def initialize
    @head = EMPTY_NODE
    @length = 0
  end

  def push(val)
    #push an element onto the top of the list
    newhead = Node.new(@head, val)
    @head = newhead
    @length += 1
  end

  def pop
    #pop off the top element
    val = @head.value()
    @head = @head.next
    @length -= 1
    return val
  end

  def append(val)
    #if the list is empty
    if @head == EMPTY_NODE
      @head = Node.new(EMPTY_NODE, val)
      @length += 1
      return
    end

    walker = @head
    walker = walker.next until walker.next == EMPTY_NODE
    newnode = Node.new(EMPTY_NODE, val)
    walker.next = newnode
    @length += 1
  end

  def get(index)
    #retrieve the value stored at the given index
    walker = @head
    i = index
    while i > 0
      break if walker.next = EMPTY_NODE
      walker = walker.next
      i -= 1
    end

    return walker.value

  end

  def length
    return @length
  end

  def to_s
    walker = @head
    nString = ""
    while walker != EMPTY_NODE do
      nString += walker.value.to_s + " "
      walker = walker.next
    end

    return nString
  end

end