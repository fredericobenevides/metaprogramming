my_var = "Success"

class MyClass
  # We want to print my_var here...
  p my_var
  
  def my_method
    # .. and here
    p my_var
  end
end

p my_var
MyClass.new.my_method