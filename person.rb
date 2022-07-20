# Copyright (C) Lembani Sakala - All rights reserved. 
# Unauthorized copying of this file, via any medium is strictly prohibited. 
# Proprietary and confidential.

require 'securerandom'

class Person
  def initialize(name: 'Unknown', age, parent_permission: true)
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name
  attr_accessor :age

  def is_of_age?
    @age >= 18
  end

  def can_use_service?
    @parent_permission == true || is_of_age?
  end

  private :is_of_age?
end
