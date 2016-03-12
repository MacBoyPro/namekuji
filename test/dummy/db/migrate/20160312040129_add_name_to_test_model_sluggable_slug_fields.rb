class AddNameToTestModelSluggableSlugFields < ActiveRecord::Migration
  def change
    add_column :test_model_sluggable_slug_fields, :name, :string
  end
end
