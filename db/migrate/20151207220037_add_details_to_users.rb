class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :telephone, :string
    add_column :users, :salary, :integer
    add_column :users, :gender, :boolean
    add_column :users, :age, :smallint
    add_column :users, :role, :integer
  end
end
