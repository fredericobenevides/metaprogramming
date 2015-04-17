# Instance exec permite passar valores o bloco.
# No código abaixo usando instance_eval
#  C.new.instance_eval { "@x: #{@x}, @y: #{@y}"}
# o valor de @y será nulo, pois instance_variable depende do self, portanto, quando é chamado o instance_eval no C,
# o scope do D é perdido devido a criação de um novo scopo, e nesse atual momento, o D não foi inicializado evitando assim
# de criar uma nova instancia @y.

# Para resolver isso é necessário utilizar o instance_exec

class C
  def initialize
    @x = 1
  end
end

class D
  def twisted_method
    @y = 2
    C.new.instance_eval { "@x: #{@x}, @y: #{@y}"}
    #C.new.instance_exec(@y) { |y| "@x: #{@x}, @y: #{y}"}
  end
end

# usando instance_eval
puts D.new.twisted_method # @x: 1, @y:

# usando instance_exec
puts D.new.twisted_method # @x: 1, @y: 2