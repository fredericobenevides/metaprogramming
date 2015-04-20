class MyClass
  attr_accessor :a
end

obj = MyClass.new
obj.a = 2
p obj.a  # 2

class MyClass; end

class Class
  attr_accessor :b
end

MyClass.b = 42
p MyClass.b   # 42

# Se definir os métodos no singleton methods, ele virá como class methods.

class MyClass
  class << self
    attr_accessor :c
  end
end

MyClass.c = 'It works'
p MyClass.c  # It works

# isso acima é o mesmo debaixo:

def MyClass.c=(value)
  @c = value
end

def MyClass.c
  @c
end


puts "\n"
puts MyClass.superclass # Object
puts MyClass.superclass.superclass # BasicObject
puts MyClass.superclass.superclass.superclass # nil

puts "\n"
puts MyClass.singleton_class # #<Class:MyClass>
puts MyClass.singleton_class.superclass #<Class:Object>
puts MyClass.singleton_class.superclass.superclass #<Class:BasicObject>
puts MyClass.singleton_class.superclass.superclass.superclass # Class