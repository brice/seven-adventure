# Queue Class

class Queue
    attr_accessor :struct

    def initialize(struct)
        @struct = struct
    end

    def count
        struct.count
    end

    def enqueue(item)
        struct.push(item)
    end

    def dequeue()
        struct.shift()
    end

end

queue = Queue.new([])
queue.enqueue(1)
queue.enqueue(2)

x = queue.dequeue()
puts x

if x == 1
    puts "You succeed to create a queue"
end