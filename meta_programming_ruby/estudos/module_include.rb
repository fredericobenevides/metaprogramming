module MyMixin
  def x
    puts "x()"
  end
end

class MyClass
  include MyMixin
end

MyClass.new.x

class MyClass
  extend MyMixin
end

MyClass.x