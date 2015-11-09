class AddTypeToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :appt_type, :string, :null => false, :default => "standard"
  end
end
