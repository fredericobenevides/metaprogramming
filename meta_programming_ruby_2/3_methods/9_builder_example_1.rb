require 'builder'

xml = Builder::XmlMarkup.new(:target=>STDOUT, :indent=>2)

puts xml.coder {
  xml.name 'Matsumoto', :nickname => 'Matz'
  xml.language 'Ruby'
}
