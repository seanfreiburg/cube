class AddActionsTable < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.integer  :user_id
      t.integer :action_id
      t.boolean :new

      t.timestamps
    end
  end
end
