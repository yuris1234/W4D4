class MyStack
    attr_reader :store 

    def initalize
        @store = []
    end

    def peek
        @store.last 
    end

    def size 
        @store.size 
    end

    def empty?
        @store.empty? 
    end

    def pop 
        @store.pop 
    end
end