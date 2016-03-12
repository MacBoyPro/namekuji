class TestModelSluggable < ActiveRecord::Base
  include Namekuji

  sluggable

  def to_s
    name
  end
end
