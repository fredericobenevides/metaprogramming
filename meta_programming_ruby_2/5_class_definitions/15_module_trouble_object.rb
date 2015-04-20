module MyModule
  def my_method; 'hello 2'; end
end

obj = Object.new

class << obj
  include MyModule
end

p obj.my_method # hello_2
p obj.singleton_methods # [:my_method]
