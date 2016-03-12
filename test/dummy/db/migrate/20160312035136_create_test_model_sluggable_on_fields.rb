class CreateTestModelSluggableOnFields < ActiveRecord::Migration
  def change
    create_table :test_model_sluggable_on_fields do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
