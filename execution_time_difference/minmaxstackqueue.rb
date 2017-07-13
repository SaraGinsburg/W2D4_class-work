class MyQueue
  def initialize
    @store = []
  end

  def enqueue(el)
    @store.push(el)
  end

  def dequeue(el)
    @store.shift(el)
  end

  def peek
    @store
  end
end



class MyStack
  def initialize
    @store = []
  end
end
