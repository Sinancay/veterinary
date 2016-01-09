class AddImageToReport < ActiveRecord::Migration
  def up
    remove_column :reports, :image
    add_attachment :reports, :image
  end

  def down
    remove_attachment :reports, :image
  end
end
