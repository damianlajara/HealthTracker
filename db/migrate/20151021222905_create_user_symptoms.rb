class CreateUserSymptoms < ActiveRecord::Migration
  def change
    create_table :user_symptoms do |t|
      t.integer :user_id
      t.integer :symptom_id
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
