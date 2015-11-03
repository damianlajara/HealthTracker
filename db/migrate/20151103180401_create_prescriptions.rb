class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.string :name
      t.integer :amount
      t.integer :refill
      t.integer :dosage
      t.integer :frequency

      t.timestamps null: false
    end
  end
end
