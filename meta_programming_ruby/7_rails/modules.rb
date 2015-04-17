require 'active_record'
ActiveRecord::Base # autoload all modules

class MyClass
  def save; end
  def save!; end
  def new_record?; true; end
  
  include ActiveRecord::Validations
  
  attr_accessor :attr
  validates_length_of :attr, :minimum => 4
end

obj = MyClass.new
obj.attr = 'test'
p obj.valid?

obj.attr = 'tst'
p obj.valid?