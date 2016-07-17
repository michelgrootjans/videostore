require 'rspec'
require "movie"
require "rental"
require "customer"

describe "a customer" do
  let(:customer) { Customer.new "Martin" }
  let(:regular_movie) { Movie.new "Mad Max", Movie::REGULAR }
  let(:new_movie)  { Movie.new("The Hobbit", Movie::NEW_RELEASE) }
  let(:childrens_movie) { Movie.new("Bambi", Movie::CHILDRENS) }

  describe "without any rentals" do
    it { expect(customer.statement).to eq "Rental record for Martin\nAmount owed is $0\nYou earned 0 frequent renter points" }
  end

  describe "with one regular rental" do
    describe "for 1 day" do
      before { customer.add_rental(Rental.new(regular_movie, 1)) }

      it { expect(customer.statement).to include "Amount owed is $2" }
      it { expect(customer.statement).to include "You earned 1 frequent renter points" }
    end

    describe "for 2 days" do
      before(:each) do
        customer.add_rental(Rental.new(regular_movie, 2))
      end

      it "should owe $2" do
        expect(customer.statement).to include "Amount owed is $2"
      end

      it "should have a frequent renter point" do
        expect(customer.statement).to include "You earned 1 frequent renter points"
      end
    end

    describe "for 3 days" do
      before(:each) do
        customer.add_rental(Rental.new(regular_movie, 3))
      end

      it "should owe $2" do
        expect(customer.statement).to include "Amount owed is $3.5"
      end

      it "should have a frequent renter point" do
        expect(customer.statement).to include "You earned 1 frequent renter points"
      end
    end
  end

  describe "with one new release rental" do
    describe "for 1 day" do
      before(:each) do
        customer.add_rental(Rental.new(new_movie, 1))
      end

      it "should owe $3" do
        expect(customer.statement).to include "Amount owed is $3"
      end

      it "should have a frequent renter point" do
        expect(customer.statement).to include "You earned 1 frequent renter points"
      end
    end

    describe "for 2 days" do
      before(:each) do
        customer.add_rental(Rental.new(new_movie, 2))
      end

      it "should owe $6" do
        expect(customer.statement).to include "Amount owed is $6"
      end

      it "should have 2 frequent renter points" do
        expect(customer.statement).to include "You earned 2 frequent renter points"
      end
    end

    describe "for 3 days" do
      before(:each) do
        customer.add_rental(Rental.new(new_movie, 3))
      end

      it "should owe $6" do
        expect(customer.statement).to include "Amount owed is $9"
      end

      it "should have 2 frequent renter points" do
        expect(customer.statement).to include "You earned 2 frequent renter points"
      end
    end

  end

  describe "with one children's rental" do
    describe "for 1 day" do
      before(:each) do
        customer.add_rental(Rental.new(childrens_movie, 1))
      end

      it "should owe $1.5" do
        expect(customer.statement).to include "Amount owed is $1.5"
      end

      it "should have a frequent renter point" do
        expect(customer.statement).to include "You earned 1 frequent renter points"
      end
    end

    describe "for 3 days" do
      before(:each) do
        customer.add_rental(Rental.new(childrens_movie, 3))
      end

      it "should owe $1.5" do
        expect(customer.statement).to include "Amount owed is $1.5"
      end

      it "should have a frequent renter point" do
        expect(customer.statement).to include "You earned 1 frequent renter points"
      end
    end

    describe "for 4 days" do
      before(:each) do
        customer.add_rental(Rental.new(childrens_movie, 4))
      end

      it "should owe $3.5" do
        expect(customer.statement).to include "Amount owed is $3"
      end

      it "should have a frequent renter point" do
        expect(customer.statement).to include "You earned 1 frequent renter points"
      end
    end
  end
end