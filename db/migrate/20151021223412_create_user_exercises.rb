class CreateUserExercises < ActiveRecord::Migration
  def change
    create_table :user_exercises do |t|
      t.integer :exercise_id
      t.integer :user_id
      t.integer :regular_frequency
      t.text :irregular_frequency

      t.timestamps null: false
    end
  end
end
