class Object
  def eigenclass
    class << self; self; end
  end
end

p "abc eingeclass: #{"abc".eigenclass}"


class C
  def a_method
    'C#a_method()'
  end
end

class D < C; end
obj = D.new
obj.a_method

class << obj
  def a_singleton_method
    'obj#a_singleton_method()'
  end
end

p "obj eingeclass superclass: #{obj.eigenclass.superclass}"
#p "obj eingeclass superclass: #{obj.a_singleton_method}"

class C
  class << self
    def a_class_method
      'C.a_class_method()'
    end
  end
end

p "C class: #{C.class}"
p "C superclass: #{C.superclass}"
p "C eigenclass: #{C.eigenclass}"
p "C eigenclass superclass: #{C.eigenclass.superclass}"

p "D class: #{D.class}"
p "D superclass: #{D.superclass}"
p "D eigenclass: #{D.eigenclass}"
p "D eigenclass superclass: #{D.eigenclass.superclass}"

p "*********************************************"

p D.a_class_method
