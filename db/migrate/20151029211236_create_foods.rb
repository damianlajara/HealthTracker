class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calories
      t.belongs_to :food_group, index: true

      t.timestamps null: false
    end
    add_foreign_key :foods, :groups
  end
end
