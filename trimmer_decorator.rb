# Copyright (C) Lembani Sakala - All rights reserved.
# Unauthorized copying of this file, via any medium is strictly prohibited.
# Proprietary and confidential.

require_relative './base_decorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name[0..9]
  end
end
