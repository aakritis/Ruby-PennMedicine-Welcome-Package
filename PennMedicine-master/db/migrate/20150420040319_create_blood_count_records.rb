class CreateBloodCountRecords < ActiveRecord::Migration
  def change
    create_table :blood_count_records do |t|
      t.date :date
      t.string :day
      t.string :wbc
      t.string :anc
      t.string :hgb
      t.string :plt
      t.string :transfusions
      #t.integer :user_id

      t.timestamps null: false
    end
  end
end
