# Is-A, Has-A, Objects, and Classes

class Animal
end

class Dog < Animal
    def initialize(name)
        @name = name
        @pet = nil
    end
    attr_accessor :pet
end

class Cat < Animal
    def initialize(name)
        @name = name
        @pet = nil
    end
    attr_accessor :pet
end

class Person
    def initialize(name)
        @name = name
        @pet = nil
    end
    attr_accessor :pet
end

class Employee < Person
    def initialize(name, salary)
        super(name)
        @salary = salary
    end
end

class Fish < Animal
end

class Salmon < Fish
end

class Halibut < Fish
end

rover = Dog.new("Rover")

god = Cat.new("God")

mary = Person.new("Mary")

frank = Employee.new("Frank", 12000)

mary.pet = god

frank.pet = rover

flipper = Fish.new()

crouse = Salmon.new()

harry = Halibut.new()

puts "Rover is a #{rover.class}\n"
puts "God is a #{god.class}\n"
puts "Mary is a #{mary.class}\n"
puts "Frank is a #{frank.class}\n"
puts "Mary pet has called #{mary.pet.instance_variable_get(:@name)}\n"
puts "Frank pet has called #{frank.pet.instance_variable_get(:@name)}\n"
puts "Flipper is a #{flipper.class}\n"
puts "Crouse is a #{crouse.class}\n"
puts "Harry is a #{harry.class}\n"
