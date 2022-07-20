# Copyright (C) Lembani Sakala - All rights reserved. 
# Unauthorized copying of this file, via any medium is strictly prohibited. 
# Proprietary and confidential.

require_relative './person'

class Teacher < Person
  def initialize(specialization, name: 'Unknown', age, parent_permission: true)
    super(name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
