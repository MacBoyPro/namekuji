class TestModelSluggableSlugField < ActiveRecord::Base
  include Namekuji

  sluggable slug_field: :parameterized
end
