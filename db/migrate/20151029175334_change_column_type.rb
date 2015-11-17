class ChangeColumnType < ActiveRecord::Migration
  def change
    change_column :appointments, :date, :datetime
    change_column :appointments, :reasons, :text
  end
end
