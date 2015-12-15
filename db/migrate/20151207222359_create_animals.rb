class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.integer :role
      t.references :user, index: true, foreign_key: true
      t.integer :age
      t.boolean :gender
      t.timestamps null: false
    end
  end
end
