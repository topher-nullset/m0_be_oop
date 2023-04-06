# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
    attr_reader :name, :color
    def initialize(name)
        @name = name
        @color = "Silver"
    end
    def say(input)
    "*~* #{input} *~*"
    end
end

# TEST should print "Silver" / "*~* Catherine is a unicorn *~*"
u1 = Unicorn.new("Catherine")
p u1.color
p u1.say("Catherine is a unicorn")


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    attr_reader :name, :pet, :thirsty
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end
    def id
        if @thirsty == true
            "#{@name} and their pet #{@pet} are thirsty, Run!"
        else "#{@name} and their pet #{@pet} are satiated."
        end
    end
    def drink
        @thirsty = false
    end
end

# TEST should return "Stephen and their pet crow are thirsty, Run!" / "Stephen and their pet crow are satiated."
v1 = Vampire.new("Stephen", "crow")
p v1.id
v1.drink
p v1.id



#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
    attr_reader :name, :rider, :color, :is_hungry
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry =  true
        @hunger = 4
    end
    def eat
        if @hunger == 0
            @is_hungry = false
        else @hunger -= 1
        end
    end
end

# TEST should print: true, true, true, true, false. Meaning it gets fed 4 times and then returns false when you try to feed again.
d1 = Dragon.new("Sweet", "Spicy", "purple")
d1.eat
p d1.is_hungry
d1.eat
p d1.is_hungry
d1.eat
p d1.is_hungry
d1.eat
p d1.is_hungry
d1.eat
p d1.is_hungry


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
    attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring
    def initialize(name, disposition, age = 0)
        @name = name
        @dispo = disposition
        @age = age
        @is_adult = false
        @is_old = false
        @has_ring = false
    end
    def has_ring
        @has_ring = true if @name == "Frodo"
    end
    def celebrate_birthday
        @age += 1
        @is_adult = true if @age >= 33
        @is_old = true if @age >= 101
    end
end

#Test
sam = Hobbit.new("Samwise", "loving", 39)
frodo = Hobbit.new("Frodo", "Curious", 51)
bilbo = Hobbit.new("Bilbo", "adventurous", 129)
frodo.celebrate_birthday
sam.celebrate_birthday
bilbo.celebrate_birthday
p sam.is_adult          #true
p sam.is_old            #false
p sam.has_ring          #nil
p frodo.is_adult        #true
p frodo.is_old          #false
p frodo.has_ring        #true
p bilbo.is_adult        #true
p bilbo.is_old          #true
p bilbo.has_ring        #nil