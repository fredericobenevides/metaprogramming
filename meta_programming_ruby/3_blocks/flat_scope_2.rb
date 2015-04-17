my_var = "Success"

MyClass = Class.new do
  # Now we can print my_var here...
  puts "#{my_var} in the class definition!"

  
  def my_method
    # ... but how can we print it here?
    p my_var
  end
end

#p my_var
MyClass.new.my_method