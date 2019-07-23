class Hash
  # Hash#each returns the original hash
  def each
    index = 0
    until index == self.keys.size
      yield(self.keys[index], self.values[index])
      index += 1
    end
    self
  end

  # Hash#select returns a new hash for which block returns true
  def select
    selected_elements = {}
    index = 0
    until index == self.keys.size
      output = yield(self.keys[index], self.values[index])
      selected_elements[self.keys[index]] = self.values[index] if output
      index += 1
    end
    selected_elements
  end
end

h = { "a" => 100, "b" => 200, "c" => 350 }

# h.each {|key, val| puts "#{key} equals #{val}"}
puts h.select {|key, val| key < "b"}
