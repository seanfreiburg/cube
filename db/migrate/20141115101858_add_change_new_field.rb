class AddChangeNewField < ActiveRecord::Migration
  def change
    remove_column :commands, :new
    add_column :commands, :sent, :boolean
  end
end
