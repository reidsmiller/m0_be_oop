# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :name

    def initialize (name)
        @name = name
        @color = "silver"
    end

    def say(string)
        puts "*~* #{string}"
    end
end

uni1 = Unicorn.new("Charlie")
p uni1

uni1.say("I'm the most beautiful unicorn EVER")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :name

    def initialize (name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink
        @thirsty = false
    end
end

vamp1 = Vampire.new("Gary")
p vamp1

vamp1.drink
p vamp1

vamp2 = Vampire.new("Selene", "Succubus")
p vamp2

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    def initialize (name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @times_eaten = 0
        @is_hungry = true
    end

    def eat
        @times_eaten = @times_eaten.next

        if @times_eaten >= 4
            @is_hungry = false
        end
    end
end

drg1 = Dragon.new("Saphira", "Eragon", "Blue")
p drg1

drg1.eat
p drg1

drg1.eat
drg1.eat
drg1.eat
p drg1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    def initialize (name, disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        @is_old = false
        @has_ring = 
            if @name == "Frodo"
                true
            else
                false
            end
    end

    def celebrate_birthday
        @age = @age.next

        if @age >= 101
            @is_old = true
            @is_adult = true
        elsif @age >=33
            @is_old = false
            @is_adult = true
        else
            @is_old = false
            @is_adult = false
        end
    end
end

hob1 = Hobbit.new("Frodo", "Reserved")
p hob1
34.times {hob1.celebrate_birthday}
p hob1

hob2 = Hobbit.new("Bilbo", "Adventurous")
p hob2
111.times {hob2.celebrate_birthday}
p hob2