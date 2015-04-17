module MyMixin
  def self.included(base)
    base.extend(ClassMethods)
  end
  
  module ClassMethods
    def x
      puts "x()"
    end
  end
end

class MyClass
  include MyMixin
  
  x
end

module MyMixin2
  def self.included(base)
    base.extend(self)
  end
  
  def x2
    puts "x2()"
  end
end

class MyClass2
  include MyMixin2
  
  x2
end