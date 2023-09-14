require "./my_stack.rb"

class StackQueue
    def initalize
        @stack_enqueue = MyStack.new
        @stack_dequeue = MyStack.new 
    end

    def enqueue(ele)
        @stack_enqueue.push(ele)
    end

    def dequeue
        until @stack_enqueue.empty?
            @stack_dequeue << @stack_enqueue.pop
        end
        @stack_dequeue.pop 
        until @stack_dequeue.empty?
            @stack_enqueue << @stack_dequeue.pop
        end 
    end 

    def peek
        @stack_enqueue.first 
    end
end

s = StackQueue.new 
s.enqueue(1)
s.enqueue(2)
s.enqueue(3)
s.peek