class Movie
  REGULAR = 0
  NEW_RELEASE = 1
  CHILDRENS = 2

  attr_reader :title
  attr_accessor :price_code

  def initialize(title, price_code)
    @title = title
    @price_code = price_code
  end
end

class RegularMovie < Movie
  def initialize(title)
    super(title, Movie::REGULAR)
  end

  def amount_for(days_rented)
    return 2 if days_rented <= 2
    return 2 + (days_rented-2) * 1.5
  end
end

class NewMovie < Movie
  def initialize(title)
    super(title, Movie::NEW_RELEASE)
  end

  def amount_for(days_rented)
    days_rented * 3
  end
end

class ChildrensMovie < Movie
  def initialize(title)
    super(title, Movie::CHILDRENS)
  end

  def amount_for(days_rented)
    return 1.5 if days_rented <= 3
    return 1.5 + (days_rented-3) * 1.5
  end
end