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
            present = @head
            present = present.next_node until present.next_node.nil?
            present.next_node = node
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

end
