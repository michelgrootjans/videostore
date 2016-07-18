class Customer
  attr_reader :name

  def initialize(name)
    @name = name
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
  end

  def statement
    total_amount = 0
    frequent_renter_points = 0
    result = "Rental record for #{@name}\n"
    @rentals.each do |rental|
      frequent_renter_points += rental.frequent_renter_points

      result += "\t#{rental.movie_title}\t#{rental.amount}\n"
      total_amount += rental.amount
    end

    result += "Amount owed is $#{total_amount}\n"
    result += "You earned #{frequent_renter_points} frequent renter points"
    result
  end
end