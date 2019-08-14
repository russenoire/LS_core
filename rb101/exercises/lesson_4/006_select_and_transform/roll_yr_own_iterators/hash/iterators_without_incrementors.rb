class Hash
  def each
    for index in 0...self.keys.size
      yield self.keys[index], self.values[index] if block_given?
    end
    self
  end

  def select
    selected_elements = {}
    for index in 0...self.keys.size
      output = yield self.keys[index], self.values[index] if block_given?
      selected_elements[self.keys[index]] = self.values[index] if output
    end
    selected_elements
  end

  def map
    new_map = {}
    for index in 0...self.keys.size
      output = yield self.keys[index], self.values[index] if block_given?
      new_map[self.keys[index]] = output
    end
    new_map
  end

  def any?
    output = false
    # returns true if block evals to true for any element in collection
    for index in 0...self.keys.size
      output = yield self.keys[index], self.values[index] if block_given?
    end
    return output ? output : false
  end

  def all?
    # returns true if block evals to true for all elements in collection

  end

  def each_with_index

  end
end

h = { "a" => 100, "b" => 200, "c" => 351 }

h.each {|key, val| p "#{key} equals #{val}"}
p h.select {|key, val| key > "a"}
p h.map {|key, val| val.odd? }
p h.any? {|key, val| val.odd? }
# p h
