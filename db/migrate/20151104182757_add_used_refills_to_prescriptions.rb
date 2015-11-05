class AddUsedRefillsToPrescriptions < ActiveRecord::Migration
  def change
    add_column :prescriptions, :used_refills, :integer
  end
end
