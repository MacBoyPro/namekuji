require 'test_helper'

class Namekuji::SluggableTest < ActiveSupport::TestCase
  name = "Sluggable Test Model"
  slug = "sluggable-test-model"

  test "sluggable" do
    sluggable = TestModelSluggable.create name: name

    assert_equal sluggable.slug, slug
    assert_equal sluggable.to_param, slug
  end

  test "sluggable on field" do
    sluggable_on_field = TestModelSluggableOnField.create name: name

    assert_equal sluggable_on_field.slug, slug
    assert_equal sluggable_on_field.to_param, slug
  end

  test "sluggable slug field" do
    sluggable_slug_field = TestModelSluggableSlugField.create name: name

    assert_equal sluggable_slug_field.parameterized, slug
    assert_equal sluggable_slug_field.to_param, slug
  end

  test "sluggable on field slug field" do
    sluggable_on_field_slug_field = TestModelSluggableOnFieldSlugField.create name: name

    assert_equal sluggable_on_field_slug_field.parameterized, slug
    assert_equal sluggable_on_field_slug_field.to_param, slug
  end

  test "sluggable removes apostrophes" do
    name = "We Don't Want Extra Dashes"
    slug = "we-dont-want-extra-dashes"

    sluggable_removes_apostrophes = TestModelSluggable.create name: name

    assert_equal sluggable_removes_apostrophes.slug, slug
    assert_equal sluggable_removes_apostrophes.to_param, slug
  end
end
