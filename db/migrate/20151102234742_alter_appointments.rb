class AlterAppointments < ActiveRecord::Migration
  def change
  	add_column :appointments, :cal_date, :string
  end
end
