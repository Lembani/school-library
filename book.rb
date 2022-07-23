# Copyright (C) Lembani Sakala - All rights reserved.
# Unauthorized copying of this file, via any medium is strictly prohibited.
# Proprietary and confidential.

require_relative './rental'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @id = Random.rand(1...1000)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    Rental.new(date, self, person)
  end
end
