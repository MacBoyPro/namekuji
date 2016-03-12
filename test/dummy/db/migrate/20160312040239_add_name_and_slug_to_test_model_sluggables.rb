class AddNameAndSlugToTestModelSluggables < ActiveRecord::Migration
  def change
    add_column :test_model_sluggables, :name, :string
    add_column :test_model_sluggables, :slug, :string
  end
end
