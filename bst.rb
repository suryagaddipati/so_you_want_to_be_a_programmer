class Bst
  attr_reader :root

  def initialize(value)
    @root = Node.new(value)
  end

  def print 
    TreePrinter.new(self).print
  end

  def insert(current = @root , value)
    if(value  < current.value)
      if current.left == nil 
        current.left = Node.new(value)
      else
        insert(current.left,value)
      end
    else
      if current.right == nil 
        current.right = Node.new(value)
      else
        insert(current.right,value)
      end
    end
  end

  def exists(value)
    current = @root
    while(current)
      return true if current.value == value
      current = value < current.value ? current.left : current.right
    end
    false
  end

  class Node
    attr_accessor :value, :left, :right
    def initialize(value,left=nil,right=nil)
      self.value =value
      self.left =left
      self.right =right
    end
    def right_val
      right == nil ? nil : right.value
    end
    def left_val
      left == nil ? nil : left.value
    end
  end

  class TreePrinter
    def initialize(bst)
      @root = bst.root
    end
    def print
    end
  end
end

