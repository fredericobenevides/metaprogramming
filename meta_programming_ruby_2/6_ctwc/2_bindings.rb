class MyClass
  def my_method
    @x = 1
    binding
  end
end

p b = MyClass.new.my_method # #<Binding:0x007f14f2898ba0>

p eval "@x", b # 1

class AnotherClass
  def my_method
    eval "self", TOPLEVEL_BINDING
  end
end

p AnotherClass.new.my_method # => main
