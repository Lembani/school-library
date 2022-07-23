# Copyright (C) Lembani Sakala - All rights reserved.
# Unauthorized copying of this file, via any medium is strictly prohibited.
# Proprietary and confidential.

require_relative './nameable'
require 'securerandom'

class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :name, :age, :parent_permission

  def initialize(age, name: 'Unknown', parent_permission: true)
    super
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
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

  def add_rental(date, person)
    Rental.new(date, person, self)
  end
end
