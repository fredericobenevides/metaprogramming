# Shared Scopes. Permite compartilhar variáveis entre métodos.
# Para isso é necessário criar todos os métodos no mesmo Flat Scope de uma variável.
# Isso permite que os métodos visualizam o shared, mas nenhum outro local consegue energar a variável shared, pois está
# protegido pelo Scope Gate

def define_methods
  shared = 0

  # É usado kernel ao invés do define_method, pois esse comando já está dentro de um método
  Kernel.send :define_method, :counter do
    shared
  end

  Kernel.send :define_method, :inc do |x|
    shared += x
  end
end

define_methods

puts counter
inc(4)
puts counter