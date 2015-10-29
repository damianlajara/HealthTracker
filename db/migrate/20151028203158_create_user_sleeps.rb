class CreateUserSleeps < ActiveRecord::Migration
  def change
    create_table :user_sleeps do |t|
      t.belongs_to :user, index: true
      t.integer :hours
      t.time :start
      t.time :wake
      t.string :quality

      t.timestamps null: false
    end
  end
end
