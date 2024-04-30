# Inheritance Versus Composition

# Implicit Inheritance - When u don't declare the safe method in the Child the Child will inherit the method of the Parent.

puts "IMPLICIT> "

class Parent
    def implicit()
        puts "PARENT implicit()"
    end
end

class Child < Parent
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

# Override explicity - When u declare a method in a Child that exists in the Parent this method will be override in the Child.

puts "OVERRIDE> "

class ParentOverride
    def override()
        puts "PARENT override()"
    end
end

class ChildOverride < ParentOverride
    def override()
        puts "CHILD override()"
    end
end

dad = ParentOverride.new()
son = ChildOverride.new()

dad.override()
son.override()

# Alter Before or After - With the super we can access the method of the Parent inside the override method in the Child.

puts "SUPER> "

class ParentSuper
    def altered()
        puts "PARENT altered()"
    end
end

class ChildSuper < ParentSuper
    def altered()
        puts "BEFORE CHILD altered()"
        super()
        puts "AFTER CHILD altered()"
    end
end

dad = ParentSuper.new()
son = ChildSuper.new()

dad.altered()
son.altered()

# All Three Combined

puts "ALL_METHODS> "

class ParentAll
    def override()
        puts "PARENT override()"
    end

    def implicit()
        puts "PARENT implicit()"
    end

    def altered()
        puts "PARENT altered()"
    end
end

class ChildAll < ParentAll
    def override()
        puts "CHILD override()"
    end

    def altered()
        puts "BEFORE PARENT altered()"
        super()
        puts "AFTER PARENT altered()"
    end
end

dad = ParentAll.new()
son = ChildAll.new()

puts "Override: "
dad.override()
son.override()

puts "Implicit: "
dad.implicit()
son.implicit()

puts "Altered: "
dad.altered()
son.altered()

# Using super() with initialize

class Child < Parent
    def initialize(stuff)
        @stuff = stuff
        super()
    end
end
