## Animal is-a object look at the extra credit
class Animal
  def feeding_time(name)
    puts"#{name}, it's feeding time."
  end
end

## is-a
class Dog < Animal

    def initialize(name)
        ## has-a
        @name = name
    end
#Q2    
    def dogname
      return @name
    end

    def bark
      puts "Woof!Woof!"
    end
    
    def barkto(dog,cat)
      puts "#{dog}: Get out, #{cat}"
    end
end

## is-a
class Cat < Animal

    def initialize(name)
        ## has-a
        @name = name
    end
#Q2    
    def catname
      return @name
    end
    def miao
      puts "miao!miao!"
    end
end

## ??
class Person

    def initialize(name)
        ## has-a
        @name = name

        ## Person has-a pet of some kind
        @pet = nil
    end

    attr_accessor :pet 
end

## is-a
class Employee < Person

    def initialize(name, salary)
        ## has-a
        super(name)
        ## has-a
        @salary = salary
    end

end

## ??
class Fish
end

## is-a
class Salmon < Fish
end

## is-a
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")
#Q2
rover.bark
#dog.object_id
rover.barkto(rover.object_id, "satan")
#dog.class
rover.barkto(rover.class, "satan")
#dog.class+object_id
rover.barkto(rover, "satan")

#not working here, cause satan hasn't been defined
#rover.barkto(rover.dogname,satan.catname)

#function in base class (Animal)
rover.feeding_time(rover.dogname)

## is-a
satan = Cat.new("Satan")
satan.miao

#Q2
rover.barkto(rover.dogname,satan.catname)

#function in base class (Animal)
satan.feeding_time(satan.catname)
#function in base call(Animal) will work for both subcalss (Dog, Cat)

## is-a
mary = Person.new("Mary")

## has-a
mary.pet = satan

## is-a
frank = Employee.new("Frank", 120000)

## has-a
frank.pet = rover

## is-a
flipper = Fish.new()

## is-a
crouse = Salmon.new()

## is-a
harry = Halibut.new()