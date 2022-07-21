# Copyright (C) Lembani Sakala - All rights reserved. 
# Unauthorized copying of this file, via any medium is strictly prohibited.
# Proprietary and confidential.

require_relative './nameable'

class BaseDecorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
