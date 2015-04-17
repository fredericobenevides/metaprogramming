p [1, 2, 5].inject(0) {|memo, obj| memo + obj}
  
p [1, 2, 5].inject(0, &:+)