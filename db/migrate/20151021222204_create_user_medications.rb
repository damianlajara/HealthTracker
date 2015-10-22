class CreateUserMedications < ActiveRecord::Migration
  def change
    create_table :user_medications do |t|
      t.integer :user_id
      t.integer :medication_id
      t.integer :amount
      t.integer :frequency
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
