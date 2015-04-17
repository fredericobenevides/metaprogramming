X = 'constante fora do modulo'

module A
  X = 'constante do module A'

  module B
    X = 'constante do modulo B'
  end
end

puts A::X
puts A::B::X
puts ::X