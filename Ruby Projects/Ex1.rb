class Car
    @@id = 0
    attr_accessor :color
    attr_reader :year
    def initialize(make, model, year, color)
        @@id += 1
        @make = make
        @model = model
        @year = year
        @color = color
        @speed = 0
    end
    def details
        puts "The year of your #@make #@model is #@year."
        puts "The color is #@color."
        puts "The ID number of your #@make #@model is #@@id."
    end
    def speed_up(number)
        @speed += number
        puts "You are currently going #{number}."
        if number > 60 then
            puts "You are going really fast!"
        elsif number <= 60 and number >= 40 then
            puts "You are going the speed limit."
        else
            puts "You are going really slow!"
        end
    end
    def brake(number)
        @speed -= number
        puts "You are slowing down and are going to brake."
    end
    def shutoff
        @speed = 0
        puts "Your car has shut off."
    end
    def spraypaint(color)
        self.color = color
        puts "Your new #{color} paint job looks great!"
    end
    def gas_mileage(miles, gas)
        puts "The gas mileage in your #@make #@model is #{miles/gas} miles per gallon."
    end
end

car1 = Car.new("Ford", "Focus", 2010, "Black")
puts car1.details
puts car1.speed_up(61)
puts car1.brake(45)
puts car1.shutoff
puts car1.spraypaint("Blue")
puts car1.gas_mileage(500, 20)
car2 = Car.new("Toyota", "Camrey", 2005, "White")
puts car2.details