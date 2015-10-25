class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :work, :string
    remove_column :users, :home, :string
    remove_column :users, :school, :string
  end
end
