class Rental
  attr_reader :movie, :days_rented

  def initialize(movie, days_rented)
    @movie = movie
    @days_rented = days_rented
  end

  def amount
    @movie.amount_for(@days_rented)
  end

  def frequent_renter_points
    @movie.frequent_renter_points_for(@days_rented)
  end

  def movie_title
    @movie.title
  end
end