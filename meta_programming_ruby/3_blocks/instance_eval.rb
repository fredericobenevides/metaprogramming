class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new
o = obj.instance_eval do
  #self
  @v
end
p o

v = 2
obj.instance_eval { @v = v}
p obj.instance_eval { @v}