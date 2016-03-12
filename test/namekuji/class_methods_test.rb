require 'test_helper'

class Namekuji::ClassMethodsTest < ActiveSupport::TestCase
  test "sluggable" do
    assert_equal "to_s", TestModelSluggable.sluggable_field
    assert_equal "slug", TestModelSluggable.slug_field
  end

  test "sluggable on field" do
    assert_equal "name", TestModelSluggableOnField.sluggable_field
    assert_equal "slug", TestModelSluggableOnField.slug_field
  end

  test "sluggable slug field" do
    assert_equal "to_s", TestModelSluggableSlugField.sluggable_field
    assert_equal "parameterized", TestModelSluggableSlugField.slug_field
  end

  test "sluggable on field slug field" do
    assert_equal "name", TestModelSluggableOnFieldSlugField.sluggable_field
    assert_equal "parameterized", TestModelSluggableOnFieldSlugField.slug_field
  end
end
