class Rental
  attr_reader :person, :book
  attr_accessor :date

  def initialize(date, person, book)
    @date = date

    @person = person
    p person
    if person.class == 'Teacher' || person.class == 'Student'
      person.rentals << self
    else
      person['rentals'] << self
    end

    @book = book
    p book
    if book.class == 'Book'
      book.rentals << self
    else
      book['rentals'] << self
    end
  end
end
