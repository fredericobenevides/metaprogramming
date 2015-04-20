# O problema neste caso, é que o método e a variavel target_sales estão vivendo no top-level-scope

def monthly_sales
  110  # TODO: read the real number from the database
end

target_sales = 100

event "an event that always happens" do
  monthly_sales > target_sales
end

event "an event that never happen" do
  monthly_sales < target_sales
end