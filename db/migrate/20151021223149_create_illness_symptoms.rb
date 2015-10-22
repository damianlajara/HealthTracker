class CreateIllnessSymptoms < ActiveRecord::Migration
  def change
    create_table :illness_symptoms do |t|
      t.integer :illness_id
      t.integer :symptom_id

      t.timestamps null: false
    end
  end
end
