# Diferença entre lambda e método.
# Lambda é reproduzido no scope em que é definido, enquanto o método é reproduzido no scope do objeto.

class MyClass

  def initialize(value)
    @x = value
  end

  def my_method
    @x
  end
end

object = MyClass.new(1)
m = object.method :my_method
p m.call  # 1