class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.string :user_id
      t.string :pw
      t.string :phone
      t.string :status

      t.timestamps
    end
  end
end
