class Hash
  def each
    for index in (0...self.keys.size)
      yield(self.keys[index], self.values[index]) if block_given?
    end
    self
  end

  def select
    selected_elements = {}
    for index in (0...self.keys.size)
      output = yield(self.keys[index], self.values[index]) if block_given?
      selected_elements[self.keys[index]] = self.values[index] if output
    end
    selected_elements
  end
end

h = { "a" => 100, "b" => 200, "c" => 350 }

h.each {|key, val| p "#{key} equals #{val}"}
puts h.select {|key, val| key > "a"}
