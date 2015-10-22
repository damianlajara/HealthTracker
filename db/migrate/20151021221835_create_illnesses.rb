class CreateIllnesses < ActiveRecord::Migration
  def change
    create_table :illnesses do |t|
      t.string :common_term
      t.string :medical_term

      t.timestamps null: false
    end
  end
end
