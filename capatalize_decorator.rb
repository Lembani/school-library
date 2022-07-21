# Copyright (C) Lembani Sakala - All rights reserved. 
# Unauthorized copying of this file, via any medium is strictly prohibited.
# Proprietary and confidential.

require_relative './base_decorator'

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
