class MyClass
  def my_method; 'my_method()'; end
  alias :m :my_method
end

obj = MyClass.new
p obj.my_method
p obj.m

class MyClass
  alias :m2 :m
end

p obj.m2
