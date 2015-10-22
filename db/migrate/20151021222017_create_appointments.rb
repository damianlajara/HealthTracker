class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :doctor
      t.string :location
      t.date :date
      t.string :reasons
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
