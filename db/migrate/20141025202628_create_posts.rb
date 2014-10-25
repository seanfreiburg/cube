class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :text
      t.string :img_url
      t.string :location

      t.timestamps
    end
  end
end
