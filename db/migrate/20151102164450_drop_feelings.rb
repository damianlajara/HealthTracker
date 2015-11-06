class DropFeelings < ActiveRecord::Migration
  def change
    drop_table :feelings 
    drop_table :exercises 
    drop_table :user_exercises
  end
end
