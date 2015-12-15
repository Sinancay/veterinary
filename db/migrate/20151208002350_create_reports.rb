class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :role
      t.string :title
      t.date :date
      t.string :description
      t.integer :status
      t.string :image
      t.string :review
      t.string :findings
      t.string :using_drugs
      t.references :animal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
