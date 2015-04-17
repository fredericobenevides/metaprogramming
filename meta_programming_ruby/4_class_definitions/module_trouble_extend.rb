module MyModule
  def my_method; 'hello'; end
end

obj = Object.new
obj.extend MyModule
p obj.my_method

obj2 = Object.new
#p obj2.my_method #error

class MyClass
  extend MyModule
end
p MyClass.my_method
