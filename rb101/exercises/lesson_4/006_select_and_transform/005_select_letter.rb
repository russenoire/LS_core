def select_letter(sentence, character)
  selected_chars = ""

  for index in 0...sentence.length
    selected_chars << sentence[index] if sentence[index].eql?(character)
  end
  selected_chars
end


question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a')
p select_letter(question, 't')
p select_letter(question, 'z')
