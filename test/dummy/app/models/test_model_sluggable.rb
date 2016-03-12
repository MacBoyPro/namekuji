class TestModelSluggable < ActiveRecord::Base
  include Namekuji

  sluggable
end
