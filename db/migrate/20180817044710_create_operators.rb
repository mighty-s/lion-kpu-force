class CreateOperators < ActiveRecord::Migration[5.1]
  def change
    create_table :operators do |t|
      t.string :pw
      t.string :phone
      t.string :status
      t.string :name
      t.string :phone
      t.timestamps
    end
  end
end
