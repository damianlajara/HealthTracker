class CreatePrescriptionsTable < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
    	t.integer :user_id
    	t.string  :name
    	t.integer :amount
    	t.integer :refills
    	t.integer :dosage
    	t.integer :frequency
    end
  end
end
