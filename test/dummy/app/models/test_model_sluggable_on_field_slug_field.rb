class TestModelSluggableOnFieldSlugField < ActiveRecord::Base
  include Namekuji

  sluggable on_field: :name, slug_field: :parameterized
end
