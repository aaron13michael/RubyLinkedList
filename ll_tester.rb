require_relative 'linked_list'

def create_new_list
  #tests creating a new list
  list = LinkedList.new()

end

def test_push
  #test pushing nodes onto list
  list = LinkedList.new()
  list.push("Mask")
  list.push("Majora's")
  list.push("Zelda")
  list.push("Legend")
  list.push("The")
  puts list.to_s

  unless list.length != 5
    puts "push test passed"
  else
    puts "push test failed, length is " + list.length.to_s
  end

end

def test_pop
  #test poping elements off of the top of the list
  list = LinkedList.new()
  i = 1
  while i <= 10
    list.push(i)
    i+=1
  end

  i = 1
  until i > 5
    list.pop
    i+=1
  end
  #puts list.to_s
  unless list.length != 5
    puts "pop test passed"
  else
    puts "pop test failed, length is " + list.length.to_s
  end
end

def test_append
  list = LinkedList.new()
  i = 0
  until i == 10
    list.append(i)
    puts list.to_s
    i += 1
  end

  unless list.length != 10
    puts "append test passed"
  else
    puts "append test failed, length is" + list.length.to_s
  end
end

def main
  test_pop
  test_push
  test_append
end

main
