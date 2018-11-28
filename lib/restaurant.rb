
class Restaurant
  attr_reader :name

  @@all = []


  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def locations #this is an instance method
    #Returns an array of all `Locations`s of this
    #particular `Restaurant` instance
    Location.all.select do |location|
      location.restaurant == self
    end
  end

  def total_rent
    sum = 0
    # total amount this `Restaurant` pays for all of
    #its `Location`s
    #will need to add - total of rent for each location
    rents = self.locations.map do |location|
      location.rent
    end
    rents.each do |rent|
      sum += rent
    end

    sum

  end

  def create_location(address, price)
    #Creates a new `Location` instance for this
    #particular restaurant
    location = Location.new(address, price, self)
  end


  def employees
    Employee.all.select {|employee| employee if employee.restaurant == self}
  end

  def total_pay
    #total amt this restaurant pays out to all of its
    #employees
    total = 0
    self.employees.map {|employee|employee.pay}.each {|pay| total+= pay}
    total
  end

  def total_expenses
    #total amt this restaurant pays out to all of its
    #employees and in rent
    #so we want to add together total_rent and total_pay
    total_rent+total_pay
  end

end
