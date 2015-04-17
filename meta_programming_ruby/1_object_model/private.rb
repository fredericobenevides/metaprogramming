class C
  def public_method
    #self.private_method
    private_method
  end
  
  private
  
  def private_method; end
end

p C.new.public_method