class CreatePendingEvents < ActiveRecord::Migration
  def change
    create_table :pending_events do |t|
      t.belongs_to :user, index: true
      t.string :appt_type
    end
    add_foreign_key :pending_events, :users
  end
end


