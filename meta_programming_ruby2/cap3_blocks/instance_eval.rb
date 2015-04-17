class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new
res = obj.instance_eval do
  self
  @v  # => 1
end
puts res

v = 2
obj.instance_eval { @v = v }
puts obj.instance_eval { @v }