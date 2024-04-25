# Asking Questions

print "How old are you? "
# Use the gets.chomp to set a integer input.
age = gets.chomp.to_i
# Use the gets.chomp to set a non defined input.
print "How tall are you?"
height = gets.chomp
print "How much do you weigh?"
weight = gets.chomp

puts "So, you`re #{age} old, #{height} tall and #{weight} heavy."