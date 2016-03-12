class CreateTestModelSluggables < ActiveRecord::Migration
  def change
    create_table :test_model_sluggables do |t|

      t.timestamps null: false
    end
  end
end
