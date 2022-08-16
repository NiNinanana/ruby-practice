class Greeter
    def initialize(name = "World")
        @name = name
    end
    def say_hi
        puts "Hi #{@name}"
    end
    def say_bye
        puts "Bye #{@name}, come back soon!"
    end
end

g = Greeter.new("SunWoo")

g.say_hi
g.say_bye

puts Greeter.instance_methods(false)

puts g.respond_to?("say_hi")
puts g.respond_to?("name")

class Greeter
    attr_accessor :name
end

g = Greeter.new("peach")

g.say_hi
puts g.name

g.name = "apple"

puts g.name