class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calories
      t.integer :usda_id
      t.belongs_to :food_group
      t.timestamps null: false
    end
  end
end
