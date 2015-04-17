class DS
  def initialize
  end

  def get_cpu_info(workstation_id) # ...
    "2.9 Ghz quad-core"
  end

  def get_cpu_price(workstation_id) # ...
    120
  end

  def get_mouse_info(workstation_id) # ...
    "Wireless Touch"
  end

  def get_mouse_price(workstation_id) # ...
    60
  end

  def get_keyboard_info(workstation_id) # ...
    "Standard US"
  end

  def get_keyboard_price(workstation_id) # ...
    20
  end

  def get_display_info(workstation_id) # ...
    "LED 1980x1024"
  end

  def get_display_price(workstation_id) # ...
    # ...and so on
    150
  end
end

ds = DS.new
puts ds.get_cpu_info(42)     # => "2.9 Ghz quad-core"
puts ds.get_cpu_price(42)    # => 120
puts ds.get_mouse_info(42)   # => "Wireless Touch"
puts ds.get_mouse_price(42)  # => 60