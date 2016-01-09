class AddStatusToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :status, :boolean , null: false , default: false
  end
end