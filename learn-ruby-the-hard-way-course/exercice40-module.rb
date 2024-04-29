# Modules, Classes, and Objects

require "./exercice40.rb"

MyStuff.apple()

puts MyStuff::TANGERINE

thing = MyStuff_class.new()
thing.apple()
puts thing.tangerine

# dict style
# mystuff['apple']

# module style
MyStuff.apple()
puts MyStuff::TANGERINE

# class style
thing = MyStuff_class.new()
thing.apple()
puts thing.tangerine
