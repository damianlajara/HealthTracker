class AddRemaindertoPrescription < ActiveRecord::Migration
  def change
  	add_column :prescriptions, :remainder, :integer
  end
end
