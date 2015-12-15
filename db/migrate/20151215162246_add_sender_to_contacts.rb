class AddSenderToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :sender, :integer
  end
end
