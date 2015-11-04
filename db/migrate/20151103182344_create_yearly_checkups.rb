class CreateYearlyCheckups < ActiveRecord::Migration
  def change
    create_table :yearly_checkups do |t|
      t.string :name
      t.string :location
      t.date :checkup_date
    end
  end
end
