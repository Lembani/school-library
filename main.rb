# Copyright (C) Lembani Sakala - All rights reserved.
# Unauthorized copying of this file, via any medium is strictly prohibited.
# Proprietary and confidential.

require_relative 'app'
require_relative 'person'
require_relative 'teacher'
require_relative 'student'
require_relative 'book'
require_relative 'rental'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

def main
  app = App.new
  app.run
end

main
