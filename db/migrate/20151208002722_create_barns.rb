class CreateBarns < ActiveRecord::Migration
  def change
    create_table :barns do |t|
      t.date :barn_cleandate
      t.references :user, index: true, foreign_key: true
      t.text :equipment_issing
      t.string :descrption

      t.timestamps null: false
    end
  end
end
