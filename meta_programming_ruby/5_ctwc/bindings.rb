class MyClass
  def my_method
    @x = 1
    binding
  end
end

b = MyClass.new.my_method

p eval "@x", b

class Anotherclass
  def my_method
    eval "self", TOPLEVEL_BINDING
  end
end

p Anotherclass.new.my_method