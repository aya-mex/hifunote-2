class CreateRecordBodyparts < ActiveRecord::Migration[6.0]
  def change
    create_table :record_bodyparts do |t|
      t.references :record,   null: false, foreign_key: true
      t.references :bodypart, null: false, foreign_key: true
      t.timestamps
    end
  end
end
