class CreateRecordSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :record_symptoms do |t|
      t.references :record,   null: false, foreign_key: true
      t.references :symptom,  null: false, foreign_key: true
      t.timestamps
    end
  end
end