class MyClass
  def self.my_method; end
end
def MyClass.my_other_method; end

class MyClass
  class << self
    def my_method; end
  end
end

