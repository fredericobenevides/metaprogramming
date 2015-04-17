def my_method
  yield
end

top_level_variable = 1
my_method do
  top_level_variable += 1
  local_to_block = 1
end
puts top_level_variable
puts local_to_block