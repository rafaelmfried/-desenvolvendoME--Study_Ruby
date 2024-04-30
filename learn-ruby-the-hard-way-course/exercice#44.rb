# Inheritance Versus Composition

# Implicit Inheritance - When u don't declare the safe method in the Child the Child will inherit the method of the Parent.

puts "\nIMPLICIT> \n"

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

puts "\nOVERRIDE> \n"

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

puts "\nSUPER> \n"

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

puts "\nALL_METHODS> \n"

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

puts "\nINITIALIZE> \n"

class Child < Parent
    def initialize(stuff)
        @stuff = stuff
        puts "#{stuff}"
        super()
    end
end

son = Child.new("Ola mundo")

# Composition - This is the other way works looks like a inheritance  * [has-a relationship]

puts "\nCOMPOSITION> \n"

class Other
    def override()
        puts "OTHER override()"
    end

    def implicit()
        puts "OTHER implicit()"
    end

    def altered()
        puts "OTHER altered()"
    end
end

class ChildComposition
    def initialize()
        @other = Other.new()
    end

    def implicit()
        @other.implicit()
    end

    def override()
        puts "CHILD override()"
    end

    def altered()
        puts "BEFORE CHILD altered()"
        @other.altered()
        puts "AFTER CHILD altered()"
    end
end

son = ChildComposition.new()

son.implicit()
son.override()
son.altered()

# Composition with mixins - Mixins is a much more powerfull concept and advanced topic.

puts "\nCOMPOSITION WITH MIXINS\n"

module OtherMixins
    def override()
        puts "OTHER override()"
    end

    def implicit()
        puts "OTHER implicit()"
    end

    def Other.altered()
        puts "OTHER altered()"
    end
end

class ChildMixins
    include OtherMixins

    def override()
        puts "CHILD override()"
    end

    def altered()
        puts "BEFORE CHILD altered()"
        Other.altered()
        puts "AFTER CHILD altered()"
    end
end

son = ChildMixins.new()

son.implicit()
son.override()
son.altered()
