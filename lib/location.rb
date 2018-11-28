
class Location
  attr_reader :address
  attr_accessor :restaurant, :rent
  @@all = []


  def self.all
    @@all
  end

  def initialize(address, rent, restaurant)
    @address = address
    @rent = rent
    @restaurant=restaurant

    @@all << self
  end

  def self.all_addresses
    #Returns an array of the address of all `Location`
    #instances
    #looks through all Locations
    #selects simply the addresses of each
    #maybe use map?
    self.all.map do |loco|
      loco.address
    end
  end


  def hire_employee(name, pay, restaurant)
    Employee.new(name, pay, restaurant, self)
  end

end
