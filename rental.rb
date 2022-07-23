# Copyright (C) Lembani Sakala - All rights reserved.
# Unauthorized copying of this file, via any medium is strictly prohibited.
# Proprietary and confidential.

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, person, book)
    @date = date

    @book = book
    book.rentals << self

    @person = person
    person.rentals << self
  end
end
