class AddSlugToTestModelSluggableOnFields < ActiveRecord::Migration
  def change
    add_column :test_model_sluggable_on_fields, :slug, :string
  end
end
