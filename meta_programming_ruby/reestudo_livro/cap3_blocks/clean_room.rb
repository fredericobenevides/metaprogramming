class CleanRoom
  def complex_calculation
    11
  end
  def do_something
    puts "do_something"
  end
end

clean_room = CleanRoom.new
clean_room.instance_eval do
  if complex_calculation > 10
    do_something
  end
end
