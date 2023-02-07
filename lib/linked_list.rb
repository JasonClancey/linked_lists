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
                return present_node.value
            end
        end
    end

    def at(index)
        return if @head.nil?
        return "Invalid index" if index.integer? == false

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
end
