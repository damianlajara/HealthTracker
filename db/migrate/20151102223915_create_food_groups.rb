class CreateFoodGroups < ActiveRecord::Migration
  def change
    create_table :food_groups do |t|
      t.string :name
      t.integer :usda_id
      t.timestamps null: false
    end
  end
end
