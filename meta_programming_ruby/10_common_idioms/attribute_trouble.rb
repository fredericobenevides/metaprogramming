class MyClass
  attr_accessor :my_attr
  
  def initialize_attributes
    #my_attr = 10
    self.my_attr = 10
  end
end

obj = MyClass.new
obj.initialize_attributes
p obj.my_attr