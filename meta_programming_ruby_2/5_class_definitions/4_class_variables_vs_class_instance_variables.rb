@@v = 10
class C
  @@v = 1
end

class D < C
  def my_method; @@v; end
end

p D.new.my_method # 1

# class variables não pertence a classe, e sim é hierárquico, pertence ao objeto pai.
# Desta forma, @@v definido no próprio main, é alterado internamente pelas classes filhas.
p @@v # 1


class X
  @v = 1
end

class Y
  def my_method; @v; end
end

p Y.new.my_method # nil

