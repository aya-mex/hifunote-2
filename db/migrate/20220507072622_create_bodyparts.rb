class CreateBodyparts < ActiveRecord::Migration[6.0]
  def change
    create_table :bodyparts do |t|
      t.string :name
      t.timestamps
    end
  end
end
