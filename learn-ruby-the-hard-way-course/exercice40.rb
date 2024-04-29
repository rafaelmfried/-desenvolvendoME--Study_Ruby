# Modules, Classes, and Objects

mystuff = {'apple' => "I AM APPLES!"}
puts mystuff['apple']

module MyStuff
    def MyStuff.apple()
        puts "I AM APPLES!"
    end

    # this is just a variable
    TANGERINE = "Living reflection of a dream"
end

class MyStuff_class

    def initialize()
        @tangerine = "And now a thousand years between"
    end

    attr_reader :tangerine

    def apple()
        puts "I AM CLASSY APPLES!"
    end

end
