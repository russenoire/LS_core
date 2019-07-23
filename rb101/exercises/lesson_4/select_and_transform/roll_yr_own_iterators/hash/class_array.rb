class Array
  def reverse_iterate
    current_index = self.size - 1
    while current_index >= 0
      yield self[current_index], 'Value', current_index, 'Index'
      current_index -= 1
    end
  end
end

[2,4,6,8].reverse_iterate do |value, *others|
  puts "#{others[0]} = #{value}, #{others[2]} = #{others[1]}"
end
