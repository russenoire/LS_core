def fun_with_ids
  a_out = 34
  b_out = [34]
  c_out = b_out[0]

  puts "a_out has the value #{a_out} & an id of #{a_out.object_id} "
  puts "b_out has the value #{b_out} & an id of #{b_out.object_id} "
  puts "c_out has the value #{c_out} & an id of #{c_out.object_id}"

  1.times do
    puts "a_out has an id of #{a_out.object_id} inside this block"
    puts "b_out has an id of #{b_out.object_id} inside this block"
    puts "c_out has an id of #{c_out.object_id} inside this block"

    a_out = 258
    b_out = [67]
    c_out = b_out[0]

    puts "a_out has a value of #{a_out} inside this block and an id of #{a_out.object_id}"
    puts "b_out has a value of #{b_out} inside this block and an id of #{b_out.object_id}"
    puts "c_out has a value of #{c_out} inside this block and an id of #{c_out.object_id}"
  end

  puts "a_out has a value of #{a_out} after this block and an id of #{a_out.object_id}"
end

fun_with_ids
