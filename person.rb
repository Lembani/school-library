# Copyright (C) Lembani Sakala - All rights reserved.
# Unauthorized copying of this file, via any medium is strictly prohibited.
# Proprietary and confidential.

# rubocop:disable Style/OptionalBooleanParameter

require_relative './nameable'
require_relative './rental'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :parent_permission, :rentals

  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = Random.rand(1...1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end

  def of_age?
    @age >= 18
  end

  private :of_age?

  def can_use_service?
    @parent_permission == true || of_age?
  end

  def correct_name
    @name
  end
end

# rubocop:enable Style/OptionalBooleanParameter
