class AddImageToMenus < ActiveRecord::Migration[5.1]
  def change
    add_column :menus, :avatar, :string
  end
end
