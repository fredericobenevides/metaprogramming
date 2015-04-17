c = Class.new(Array) do
  def my_method
    'Hello!'
  end
end

p c.name

MyClass = c
p c.name
p c.my_method