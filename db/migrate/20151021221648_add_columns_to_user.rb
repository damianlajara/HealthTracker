class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthdate, :date
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :work, :string
    add_column :users, :home, :string
    add_column :users, :school, :string
    add_column :users, :gender, :string
    add_column :users, :zipcode, :integer

  end
end
