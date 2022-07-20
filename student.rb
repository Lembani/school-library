# Copyright (C) Lembani Sakala - All rights reserved. 
# Unauthorized copying of this file, via any medium is strictly prohibited. 
# Proprietary and confidential.

require_relative './person'

class Student < Person
  def initialize(classrom, name: 'Unknown', age, parent_permission: true)
    super(name, age, parent_permission)
    @classrom = classrom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end