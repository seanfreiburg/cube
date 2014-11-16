class AddActionsTable < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.integer  :user_id
      t.integer :command_id
      t.boolean :new

      t.timestamps
    end
  end
end
