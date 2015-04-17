my_var = "Success"

MyClass = Class.new do
  # Now we can print my_var here...
  puts "#{my_var} in the class definition!"
  
  define_method :my_method do
    puts "#{my_var} in the method!"
  end
end

#p my_var
MyClass.new.my_method