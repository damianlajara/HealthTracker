class CreateUserIllnesses < ActiveRecord::Migration
  def change
    create_table :user_illnesses do |t|
      t.integer :user_id
      t.integer :illness_id
      t.date :start_date
      t.date :end_date
      t.integer :severity

      t.timestamps null: false
    end
  end
end
