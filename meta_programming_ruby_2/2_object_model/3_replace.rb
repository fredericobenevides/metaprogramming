def replace(array, original, replacement)
  array.map {|e| e == original ? replacement : e }
end

def test_replace
  original = ['one', 'two', 'one', 'three']
  replaced = replace(original, 'one', 'zero')
  assert_equal ['zero', 'two', 'zero', 'three'], replaced
end

class Array
  def replace(original, replacement)
    self.map {|e| e == original ? replacement : e }
  end
end


# array já tem replace, por isso é bom trocar o nome
