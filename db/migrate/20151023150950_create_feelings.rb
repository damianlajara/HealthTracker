class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.integer :user_id
      t.integer :scale
      t.date :day

      t.timestamps null: false
    end
  end
end
