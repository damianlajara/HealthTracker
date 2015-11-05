class AddFirstDoseToPrescription < ActiveRecord::Migration
  def change
  	add_column :prescriptions, :first_dose, :time
  end
end
