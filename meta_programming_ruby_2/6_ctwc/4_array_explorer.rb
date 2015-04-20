def explore_array(method)
  code = "['a', 'b', 'c'].#{method}"
  puts "Evaluating: #{code}"
  eval code
end

loop { p explore_array(gets()) }

# exemplos
# map! { |e| e.next }
# object_id; Dir.glob("*")