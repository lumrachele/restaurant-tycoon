class Employee
  attr_reader :name, :pay, :restaurant
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, pay, restaurant, location)
    @name = name
    @pay = pay
    @restaurant = restaurant
    @location = location
    @@all << self
  end


  def self.average_pay
    #Returns the average pay of all employees, irrespective
    #of which `Restaurant` they work for
    sum = 0
    pay_array = self.all.map {|employee| employee.pay}
    pay_array.each { |pay| sum += pay}
    sum/self.all.count
  end
end
