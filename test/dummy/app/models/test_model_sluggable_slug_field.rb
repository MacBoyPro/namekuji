class TestModelSluggableSlugField < ActiveRecord::Base
  include Namekuji

  sluggable slug_field: :parameterized

  def to_s
    name
  end
end
