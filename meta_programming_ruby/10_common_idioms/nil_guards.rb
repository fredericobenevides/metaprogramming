a ||= []
p a

class C
  def initialize
    @a = []
  end
  
  def elements
    @a ||= []
    #@a
  end
end