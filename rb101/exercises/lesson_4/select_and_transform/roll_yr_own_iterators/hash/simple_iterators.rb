class Hash
  def each
    index = 0
    until index == self.keys.size
      yield(self.keys[index], self.values[index]) if block_given?
      index += 1
    end
    self
  end

  def select
    selected_elements = {}
    index = 0
    until index == self.keys.size
      output = yield(self.keys[index], self.values[index]) if block_given?
      selected_elements[self.keys[index]] = self.values[index] if output
      index += 1
    end
    selected_elements
  end

  def map
    new_map = {}
    index = 0
    until index == self.keys.size
      output = yield(self.keys[index], self.values[index]) if block_given?
      new_map[self.keys[index]] = output
      index += 1
    end
    new_map
  end
end

h = { "a" => 100, "b" => 200, "c" => 350 }

h.each {|key, val| p "#{key} equals #{val}"}
p h.select {|key, val| key < "b"}
p h.map {|key, val| val * 2}
p h
