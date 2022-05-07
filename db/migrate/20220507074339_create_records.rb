class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.date :onset_date,         null: false
      t.integer :onset_time,      null: false
      t.references :bodypart,     null: false, foreign_key: true
      t.references :symptom,      null: false, foreign_key: true
      t.date :visit_date
      t.string :hospital_name
      t.string :diagnosis
      t.string :cause
      t.string :prescription_drug
      t.date :remission_date
      t.text :memo
      t.references :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
