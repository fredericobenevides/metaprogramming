class C
  def a_method
    'C#a_method'
  end
end

class D < C; end

obj = D.new
p obj.a_method                    # "C#a_method"
p obj.singleton_class             # #<Class:#<D:0x007fdac6a80838>>
p obj.singleton_class.superclass  # D