require_relative 'stack_operations'

class Stack
  include StackOperations

  def initialize(length=10)
    @top_index=-1
    @data = Array.new(length)
  end

  def push(item)
    if !full?
      @top_index+=1
      @data[@top_index]=item
    else
      puts "A pilha está cheia!"
    end
  end

  def pop
    if empty?
     puts("A pilha está vazia!")
     return nil
    else
      item=@data[@top_index]
      @top_index-=1
      item
    end
  end

  def peek
    if empty?
      puts "A pilha está vazia!"
      return nil
    else
      return @data[@top_index]
    end
  end

  def update(item)
    if empty?
      puts "A pilha está vazia!"
    else
      @data[@top_index]=item
    end
  end

  def full?
    @top_index==@data.length-1
  end

  def empty?
    @top_index==-1
  end

  def print_stack
    resultado="["
    @top_index.downto(0) do |i|
      resultado+=@data[i].to_s
      resultado+="," unless i==0
    end
    resultado+="]"

  end
end

