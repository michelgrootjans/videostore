require "customer"

describe "a new customer" do
  it "should have an empty statement" do
    customer = Customer.new "Martin"
    customer.statement.should == "Rental record for Martin\nAmount owed is 0\nYou earned 0 frequent renter points"
  end
end