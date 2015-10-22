class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthdate, :date
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :locations, :text
    add_column :users, :gender, :string
  end
end
