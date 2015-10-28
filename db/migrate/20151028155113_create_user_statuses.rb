class CreateUserStatuses < ActiveRecord::Migration
  def change
    create_table :user_statuses do |t|
      t.belongs_to :user, index: true
      t.string :status

      t.timestamps null: false
    end
    add_foreign_key :user_statuses, :users
  end
end
