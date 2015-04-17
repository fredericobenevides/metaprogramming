# Os três comando do instance_eval são reproduzido dentro de um mesmo Flat Scope, por isso conseguem acessar a váriavel v.
# Já os blocks, são reproduzidos como self de um objeto.

# O bloco passado para o instance_eval é chamado de Context Probe., pois é um pequeno código que passa para trabalhar dentro do objeto.

class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new

obj.instance_eval do
  puts self #<MyClass:0x007fe2b5690948>
  puts @v   # 1
end

v = 2
obj.instance_eval { @v = v }
obj.instance_eval { puts @v } # 2