class Rental
  attr_reader :person, :book
  attr_accessor :date

  def initialize(date, person, book)
    @date = date

    @person = person
    p person
    if person.instance_of?('Teacher') || person.instance_of?('Student')
      person.rentals << self
    else
      person['rentals'] << self
    end

    @book = book
    p book
    if book.instance_of?('Book')
      book.rentals << self
    else
      book['rentals'] << self
    end
  end
end
