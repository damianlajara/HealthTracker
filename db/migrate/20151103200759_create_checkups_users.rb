class CreateCheckupsUsers < ActiveRecord::Migration
  def change
    create_table :checkups_users do |t|
      t.belongs_to :user, index: true
      t.belongs_to :yearly_checkup, index: true
    end
    add_foreign_key :checkups_users, :users
    add_foreign_key :checkups_users, :yearly_checkups
  end
end
