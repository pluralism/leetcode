class PriorityQueue
  def initialize
    @elements = [nil]
  end

  def <<(element)
    @elements << element
    bubble_up(@elements.size - 1)
  end

  def bubble_up(index)
    parent_index = (index / 2)

    # Root element
    return if index <= 1

    # Return if the parent is aleady greater than the child
    return if @elements[parent_index] >= @elements[index]

    exchange(index, parent_index)

    # Keep bubbling up
    bubble_up(parent_index)
  end

  def exchange(source, target)
    @elements[source], @elements[target] = @elements[target], @elements[source]
  end
end
