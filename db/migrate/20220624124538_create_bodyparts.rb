class CreateBodyparts < ActiveRecord::Migration[6.0]
  def change
    create_table :bodyparts do |t|

      t.timestamps
    end
  end
end
