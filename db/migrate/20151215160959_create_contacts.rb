class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.text :description
      t.text :review

      t.timestamps null: false
    end
  end
end
