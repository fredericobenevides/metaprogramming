require 'builder'

xml = Builder::XmlMarkup.new(:target=>STDOUT, :indent=>2)

puts xml.semester {
  xml.class 'Egyptology'
  xml.class 'Ornithology'
 }

