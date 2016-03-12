class CreateTestModelSluggableOnFieldSlugFields < ActiveRecord::Migration
  def change
    create_table :test_model_sluggable_on_field_slug_fields do |t|
      t.string :name
      t.string :parameterized

      t.timestamps null: false
    end
  end
end
