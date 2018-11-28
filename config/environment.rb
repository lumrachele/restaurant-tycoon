require 'pry'
require_relative '../lib/restaurant.rb'
require_relative '../lib/location.rb'
require_relative '../lib/employee.rb'

#Restaurants
r1 = Restaurant.new("Olive Garden")
r2 = Restaurant.new("Qdoba")
r3 = Restaurant.new("Dominos")


#locations
l1 = Location.new("Midtown", 10000, r1)
l2 = Location.new("Queens", 9000, r1)
l3 = Location.new("Brooklyn", 5000, r2)
l4 = Location.new("Midtown", 15000, r2)
l5 = Location.new("San Francisco", 19000, r3)
l6 = Location.new("DC", 17000, r3)

#employees
e1 = Employee.new("Rachel", 20, r3, l6)
e2 = Employee.new("Joe", 15, r2, l3)
e3 = Employee.new("Wacka Flacka", 10, r1, l1)
e4 = Employee.new("Billybob", 25, r2, l4)
e5 = Employee.new("Spongebobo", 30, r2, l4)
e6 = Employee.new("Patrick", 30, r3, l5)
e7 = Employee.new("Sandy", 30, r3, l6)
e8 = Employee.new("Mr. Krabs", 30, r3, l6)
