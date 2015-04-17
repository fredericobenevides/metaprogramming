class String

  def self.inherited(subclass)
    puts "#{self} was inherited by #{subclass}"
  end
end

class MyString < String; end





module M
  def self.included(othermod)
    puts "M was mixed into #{othermod}"
  end
end

class C
  include M
end