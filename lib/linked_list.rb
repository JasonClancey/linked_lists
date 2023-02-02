require_relative 'node'

class LinkedList

    attr_accessor :head, :tail

    def initialize
        @head = nil
        @tail = nil
    end

    def append(value)
        node = Node.new(value)
        if @head.nil?
            @head = value
            @tail = value
        else
            @tail = value
        end
    end

    def prepend(value)
        node = Node.new(value)
        if @head.nil?
            @head = value
            @tail = value
        else
            node.next_node = @head
            @head = value
        end

    end
end
