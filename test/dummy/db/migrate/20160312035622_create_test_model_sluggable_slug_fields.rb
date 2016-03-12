class CreateTestModelSluggableSlugFields < ActiveRecord::Migration
  def change
    create_table :test_model_sluggable_slug_fields do |t|
      t.string :parameterized

      t.timestamps null: false
    end
  end
end
