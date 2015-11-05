class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.belongs_to :user, index: true
      t.belongs_to :prescription, index: true
      t.string :message
      t.string :date
    end
    add_foreign_key :notifications, :users
    add_foreign_key :notifications, :prescriptions
  end
end
