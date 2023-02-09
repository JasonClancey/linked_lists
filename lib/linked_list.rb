require_relative 'node'

class LinkedList

    attr_accessor :head

    def initialize
        @head = nil
    end

    def append(value)
        node = Node.new(value)
        if @head.nil?
            @head = node
        else
            present_node = @head
            present_node = present_node.next_node until present_node.next_node.nil?
            present_node.next_node = node
        end
    end

    def prepend(value)
        node = Node.new(value)
        if @head.nil?
            @head = node
        else
            node.next_node = @head
            @head = node
        end
    end

    def size
        count = 0
        present_node = @head
        until present_node.nil?
            count += 1
            present_node = present_node.next_node
        end
        count
    end
    
    # head implemented via attr_accessor

    def tail
        present_node = @head
        until present_node.next_node.nil?
            present_node = present_node.next_node
            if present_node.next_node.nil?
                return present_node
            end
        end
    end

    def at(index)
        return "List is empty." if @head.nil?
        return "Invalid index." if index.integer? == false

        present_node = @head
        if index >= 0
            index.times do
                present_node = present_node.next_node
            end
        else
            reverse_index = size
            (reverse_index + index).times do
                present_node = present_node.next_node
            end
        end
        present_node
    end

    def pop
        return "List is empty." if @head.nil?

        pop_node = tail
        new_tail = at(-2)
        new_tail.next_node = nil
        pop_node
    end 

    def contains?(value)
        return if @head.nil?
        present_node = @head
        until present_node.value == value
            present_node = present_node.next_node
            if present_node.value == value
                return true
            elsif present_node.next_node.nil?
                return false
            end
        end
    end

    

end

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
