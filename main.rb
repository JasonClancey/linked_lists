require_relative 'lib/linked_list'

list = LinkedList.new
list.prepend(4)
list.prepend(3)
list.prepend(2)
list.prepend(1)
list.append(5)
puts list.size
puts list.tail.value
puts list.at(0).value
puts list.at(-2).value
puts list.pop.value
puts list.tail.value
puts list.contains?(4)
puts list.contains?("lol")
puts list.find(1)
p list.find(5)
list.to_s
