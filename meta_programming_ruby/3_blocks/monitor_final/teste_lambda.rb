lambda {
  Kernel.send :define_method, :ola do
    puts "ola definido pelo método"
  end
  
}.call

puts ola