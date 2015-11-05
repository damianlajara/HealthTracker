class CreateUserStats < ActiveRecord::Migration
  def change
    create_table :user_stats do |t|
      t.belongs_to :user
      t.string :feeling
      t.integer :sleep
      t.integer :calories
      t.integer :exercise

      t.timestamps null: true
    end
  end
end
