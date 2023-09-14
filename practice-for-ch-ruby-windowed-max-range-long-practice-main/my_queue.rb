class Queue 
    def initalize
        @store = []
    end

    def peek 
        @store.first
    end

    def size 
        @store.size
    end

    def empty?
        @store.empty?
    end

    def enqueue(el)
        @stack.push(el)
    end

    def dequeue 
        @stack.shift
    end
end
