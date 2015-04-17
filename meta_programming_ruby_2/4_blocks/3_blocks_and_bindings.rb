# block tem os binding separado, por isso ele captura os bindings locais. O x contendo "Hello" será enxergado pelo bloco.

def my_method
  x = "Goodbye"
  yield("cruel")
end

x = "Hello"
p my_method { |y| "#{x}, #{y} world"}#  "Hello, cruel world"