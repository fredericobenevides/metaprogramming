module MyModule
  def self.my_method; 'hello'; end
end

class MyClass
  include MyModule
end

# MyClass.my_method # error

module MyModule2
  def my_method; 'hello 2'; end
end

class MyClass2
  class << self
    include MyModule2
  end
end

p MyClass2.my_method # hello 2