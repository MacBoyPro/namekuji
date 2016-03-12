class TestModelSluggableOnField < ActiveRecord::Base
  include Namekuji

  sluggable on_field: :name
end
