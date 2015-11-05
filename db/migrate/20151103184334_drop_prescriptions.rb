class DropPrescriptions < ActiveRecord::Migration
  def change
  	drop_table :prescriptions
  end
end
