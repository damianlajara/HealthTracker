class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :user_id
      t.string :name
      t.string :doctor
      t.integer :amount
      t.integer :dosage
      t.string :schedule
      t.integer :refills
      t.date :start

      t.timestamps null: false
    end
  end
end
