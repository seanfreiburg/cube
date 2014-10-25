class ChangeImgUrlField < ActiveRecord::Migration
  def change
    remove_column :posts, :img_url
    add_column :posts, :img_name, :string
  end
end
